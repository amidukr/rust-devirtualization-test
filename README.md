# Rust Static vs Dynamic Dispatch Benchmark

<p align="center">
  <img src="docs/assets/benchmark.png"
       alt="Rust static vs dynamic dispatch benchmark"
       width="100%">
</p>

A small experiment demonstrating the difference between **static trait dispatch** and **dynamic trait dispatch** in optimized Rust code.

The benchmark uses the same trait operation in two forms:

Inlined and monomorphized:

```rust
&T
```

and vtable dynamic dispatch:

```rust
&dyn Operation
```

The static version is monomorphized and allows the trait method to be inlined into the benchmark loop.

The dynamic version is deliberately kept across a crate boundary with LTO disabled, forcing a real vtable dispatch.

## Running the benchmark

Clone the repository and run the benchmark in release mode:

```bash
git clone https://github.com/amidukr/rust-devirtualization-test.git
cd rust-devirtualization-test
cargo run --release -p devirtualization-test-main
```

On the test machine, the resulting benchmark is approximately:

- CPU: 12th Gen Intel(R) Core(TM) i7-1255U (Low-Power Laptop CPU)
- Power Mode: Balanced
- OS: Linux, kernel 7.0.0

```text
Iterations: 1000000000

run 1: static =  222.351 ms | devirt =  218.035 | dynamic = 1077.909 ms | dynamic/static = 4.85x
run 2: static =  239.876 ms | devirt =  218.814 | dynamic = 1064.655 ms | dynamic/static = 4.44x
run 3: static =  216.702 ms | devirt =  218.801 | dynamic = 1069.115 ms | dynamic/static = 4.93x
run 4: static =  218.246 ms | devirt =  217.251 | dynamic = 1079.808 ms | dynamic/static = 4.95x
run 5: static =  218.090 ms | devirt =  219.331 | dynamic = 1056.841 ms | dynamic/static = 4.85x
```

In this experiment, dynamic dispatch is therefore roughly **4.9× slower** than the statically dispatched and inlined version.

This is a deliberately small microbenchmark. It should not be interpreted as saying that Rust programs using `dyn Trait` are generally 4.9× slower. The purpose is to make the generated machine-code difference easy to observe.

## Project structure

```text
.
├── Cargo.lock
├── Cargo.toml
├── docs
│   └── assets
│       ├── lib.asm
│       └── main.asm
├── lib-crate
│   ├── Cargo.toml
│   └── src
│       └── lib.rs
├── main-crate
│   ├── Cargo.toml
│   └── src
│       └── main.rs
└── README.md
```

The experiment is split into two crates intentionally.

`lib-crate` contains the trait and the dynamic dispatch function. `main-crate` contains the concrete implementation and invokes the benchmark.

Keeping `dynamic_dispatch` in another crate while building without LTO prevents LLVM from seeing enough information to devirtualize the `dyn Operation` call.

The generic static version is different. Rust monomorphizes the generic function for the concrete `AddOne` type, allowing LLVM to optimize it specifically for that implementation.

## The trait

The benchmark uses a deliberately trivial operation:

```rust
pub trait Operation {
    fn apply(&self, x: i64) -> i64;
}

pub struct AddOne;

impl Operation for AddOne {
    #[inline(always)]
    fn apply(&self, x: i64) -> i64 {
        x + 1
    }
}
```

The simplicity is intentional: it makes the dispatch overhead and generated assembly easy to see.

## Static dispatch

The static version is generic:

```rust
#[inline(never)]
pub fn static_dispatch<T: Operation>(
    op: &T,
    mut x: i64,
    iterations: u64,
) -> i64 {
    for _ in 0..iterations {
        x = std::hint::black_box(op).apply(std::hint::black_box(x));
    }

    x
}
```

At the Rust source level this function works with any `T: Operation`.

At the machine-code level, however, Rust generates a specialized version for the concrete type used by the caller:

```text
static_dispatch::<AddOne>
```

This can be seen directly in the mangled symbol name:

```text
_RINvCs85WuWpnC3RJ_25devirtualization_test_lib15static_dispatchNtB2_6AddOneECsgqu5hhwAJIh_26devirtualization_test_main
```

The important pieces embedded in the symbol are:

```text
devirtualization_test_lib
static_dispatch
AddOne
```

The resulting optimized assembly is:

```asm
mov     rax, rdi
test    rsi, rsi
je      .LBB0_3
lea     rcx, [rsp - 8]
.p2align 4

.LBB0_2:
mov     qword ptr [rsp - 8], rax

# black_box compiler barrier

mov     rax, qword ptr [rsp - 8]
inc     rax
dec     rsi
jne     .LBB0_2

.LBB0_3:
ret
```

The important instruction is:

```asm
inc rax
```

That is the complete inlined implementation of:

```rust
op.apply(x)
```

for:

```rust
AddOne::apply(x)
```

There is no function call, function pointer, or vtable lookup in the hot loop.

The concrete type is known, so the compiler has transformed:

```rust
op.apply(x)
```

into essentially:

```rust
x += 1;
```

### Why `black_box` is inside the loop

Without `black_box`, LLVM can optimize the entire loop away.

For example:

```rust
for _ in 0..iterations {
    x = x + 1;
}
```

is mathematically equivalent to:

```rust
x + iterations
```

LLVM recognizes this and can reduce one billion iterations to approximately:

```asm
lea rax, [rdi + rsi]
ret
```

That would make the benchmark meaningless.

Instead, the benchmark uses:

```rust
x = std::hint::black_box(op).apply(std::hint::black_box(x));
```

The value of `x` becomes opaque to the optimizer on each iteration, preventing LLVM from collapsing the iterations into one addition. `op` is also made opaque so the static and dynamic benchmark loops use the same source-level barrier pattern.

For the generic static version, the concrete implementation is still known after monomorphization, so `apply()` can be inlined.

This gives us the behavior we want:

```asm
inc rax
```

executed once per iteration.

## Dynamic dispatch

The dynamic version operates on a trait object:

```rust
#[inline(never)]
pub fn dynamic_dispatch(
    op: &dyn Operation,
    mut x: i64,
    iterations: u64,
) -> i64 {
    for _ in 0..iterations {
        x = std::hint::black_box(op).apply(std::hint::black_box(x));
    }

    x
}
```

Because `&dyn Operation` is a trait object, the function effectively receives two pointers:

```text
data pointer
vtable pointer
```

On x86-64 System V, the effective arguments in this benchmark are:

```text
RDI = op.data
RSI = op.vtable
RDX = x
RCX = iterations
```

The optimized hot loop is:

```asm
.LBB0_2:
    mov     qword ptr [rsp + 16], r15
    mov     qword ptr [rsp + 24], r14

    # black_box(op) compiler barrier

    mov     qword ptr [rsp + 8], rax

    # black_box(x) compiler barrier

    mov     rdi, qword ptr [rsp + 16]
    mov     rax, qword ptr [rsp + 24]
    mov     rsi, qword ptr [rsp + 8]
    call    qword ptr [rax + 24]
    dec     rbx
    jne     .LBB0_2
```

The key instruction is:

```asm
call qword ptr [rax + 24]
```

At that point `rax` contains the vtable pointer. The call therefore reads the `Operation::apply` function pointer from the vtable and calls it indirectly.

`black_box(op)` is deliberately inside the loop. Without it, LLVM can hoist the vtable method pointer out of the loop and reduce the hot path to something like:

```asm
mov r15, qword ptr [vtable + 24]

.loop:
    call r15
```

That is a valid optimization, but it no longer measures the vtable lookup itself on every iteration. Making the trait object opaque each iteration keeps the benchmark focused on an actual vtable-based call.

Similarly, `black_box(x)` prevents LLVM from recognizing the repeated `x + 1` operation and collapsing the entire loop into a single addition.

## The called implementation

The dynamically called `AddOne::apply` itself is extremely small:

```asm
lea     rax, [rsi + 1]
ret
```

So the dynamic path performs a vtable lookup, an indirect call, the tiny operation, and a return on every iteration.

The static path can inline the same operation directly into the loop as:

```asm
inc rax
```

That is the core of this experiment.

## Static vs dynamic assembly

Ignoring the compiler-barrier bookkeeping, the essential difference is:

```text
STATIC                           DYNAMIC

inc rax                          call qword ptr [vtable + 24]
                                     lea rax, [rsi + 1]
                                     ret

dec ...                          dec ...
jne loop                         jne loop
```

Static dispatch allows `AddOne::apply` to become part of the caller. Dynamic dispatch preserves a runtime-selected function-call boundary and, in this version of the benchmark, performs the vtable method lookup on each iteration.

The benchmark intentionally makes both `op` and `x` opaque inside the loop: `black_box(op)` prevents LLVM from hoisting the dynamic method pointer, while `black_box(x)` prevents it from algebraically eliminating the loop.

## A note about GOT calls

The main crate calls the library function with assembly similar to:

```asm
call qword ptr [rip + dynamic_dispatch@GOTPCREL]
```

This should **not** be confused with trait dynamic dispatch.

`GOTPCREL` is normal ELF position-independent linking through the Global Offset Table.

Semantically, the target is still the specific named function:

```text
dynamic_dispatch
```

The actual trait dispatch occurs later, inside that function:

```asm
call qword ptr [rax + 24]
```

This distinction is important when looking for dynamic dispatch in generated assembly.

For example:

```asm
call qword ptr [rip + foo@GOTPCREL]
```

is a call to a known symbol through linker indirection.

By contrast:

```asm
call r15
```

or:

```asm
call qword ptr [rbx + 24]
```

can represent a runtime-selected call target.

## Compiler version

Results will vary by CPU, operating system, compiler version, CPU frequency scaling, core placement, and system load.

The assembly shown in this repository was generated with:

```text
rustc 1.98.1
```

## Generating the assembly

The checked-in assembly examples are stored in:

```text
docs/assets/main.asm
docs/assets/lib.asm
```

To generate Intel-syntax assembly for the library:

```bash
cargo rustc --release -p devirtualization-test-lib -- \
    --emit=asm -C llvm-args=-x86-asm-syntax=intel
```

To generate assembly for the main crate:

```bash
cargo rustc --release -p devirtualization-test-main -- \
    --emit=asm -C llvm-args=-x86-asm-syntax=intel
```

The generated `.s` files can be found under:

```text
target/release/deps/
```

For example:

```bash
find target/release/deps -name '*.s'
```

The files in `docs/assets/` are copies of these generated assembly files, kept in the repository so the generated code can be inspected without rebuilding it.

## Why two crates?

Putting the dynamic function into a separate crate is important to the experiment.

If LLVM can see both the caller and the concrete implementation, it may determine that the trait object can only contain `AddOne`.

It can then **devirtualize** the call.

In earlier experiments, LLVM was able to turn dynamic dispatch into a direct call when sufficient information was available.

That would defeat the purpose of this benchmark.

The workspace therefore disables LTO:

```toml
[profile.release]
lto = false
```

and places `dynamic_dispatch` across the crate boundary.

This keeps the dynamic dispatch genuinely dynamic.

The static generic function behaves differently because Rust monomorphizes:

```rust
static_dispatch::<AddOne>
```

for the concrete type.

The resulting specialized function is visible in the main crate's generated assembly.

## What this benchmark demonstrates

This benchmark does **not** attempt to establish a universal performance ratio between static and dynamic dispatch.

Instead, it demonstrates a specific optimization consequence of the two models.

With static dispatch:

```text
generic function
    ↓
monomorphization
    ↓
concrete implementation known
    ↓
method inlining
    ↓
inc rax
```

With dynamic dispatch:

```text
dyn Trait
    ↓
vtable method slot
    ↓
indirect call
    ↓
separate AddOne::apply
    ↓
return
```

For this deliberately tiny operation, the difference is especially visible because the useful
