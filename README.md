# Rust Static, Devirtualized, and Dynamic Dispatch Benchmark

<p align="center">
  <img src="docs/assets/benchmark.png"
       alt="Rust static, devirtualized, and dynamic dispatch benchmark"
       width="100%">
</p>

A small experiment demonstrating three forms of trait dispatch in optimized Rust code:

1. **Static dispatch** through `&T`
2. **Dynamic dispatch that LLVM can devirtualize** through `&dyn Operation`
3. **Forced dynamic dispatch** where the trait object is deliberately hidden from the optimizer

All three execute the same operation:

```rust
x + 1
```

The interesting question is what remains after optimization.

The experiment shows an important distinction:

```text
Rust source                         Optimized hot loop

&T                                  inc
&dyn Operation, devirtualized       inc
&dyn Operation, kept opaque         vtable lookup + indirect call
```

In other words, `&dyn Trait` in Rust source does **not** necessarily mean that dynamic dispatch survives into the generated machine code.

## Running the benchmark

Clone the repository and run the benchmark in release mode:

```bash
git clone https://github.com/amidukr/rust-devirtualization-test.git
cd rust-devirtualization-test
cargo run --release -p devirtualization-test-main
```

On the test machine:

- CPU: 12th Gen Intel(R) Core(TM) i7-1255U (Low-Power Laptop CPU)
- Power Mode: Balanced
- OS: Linux, kernel 7.0.0

A representative run is:

```text
Iterations: 1000000000

run 1: static =  222.351 ms | devirt =  218.035 | dynamic = 1077.909 ms | dynamic/static = 4.85x
run 2: static =  239.876 ms | devirt =  218.814 | dynamic = 1064.655 ms | dynamic/static = 4.44x
run 3: static =  216.702 ms | devirt =  218.801 | dynamic = 1069.115 ms | dynamic/static = 4.93x
run 4: static =  218.246 ms | devirt =  217.251 | dynamic = 1079.808 ms | dynamic/static = 4.95x
run 5: static =  218.090 ms | devirt =  219.331 | dynamic = 1056.841 ms | dynamic/static = 4.85x
```

The statically dispatched and devirtualized versions have essentially the same performance. The deliberately forced dynamic version is roughly **4.9× slower** in this particular microbenchmark.

This should **not** be interpreted as saying that Rust programs using `dyn Trait` are generally 4.9× slower. The operation being dispatched here is deliberately tiny, so dispatch machinery is a large fraction of the total work.

The purpose of the benchmark is to make the generated machine-code differences easy to observe.

## Project structure

```text
.
├── Cargo.lock
├── Cargo.toml
├── docs
│   └── assets
│       ├── benchmark.png
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

`lib-crate` contains the trait and dispatch functions. `main-crate` contains the benchmark wrappers and calls them with the concrete `AddOne` implementation.

The workspace builds with LTO disabled:

```toml
[profile.release]
lto = false
```

The dispatch functions themselves are marked `#[inline(always)]`, which allows their bodies to be optimized in the caller when the compiler has enough information.

The benchmark wrappers are marked `#[inline(never)]` so that the three benchmark cases remain easy to identify in the generated assembly.

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

The simplicity is intentional.

When the operation itself is only `x + 1`, the difference between an inlined operation and a runtime-selected function call is easy to see.

The separately callable implementation is essentially:

```asm
lea rax, [rsi + 1]
ret
```

On x86-64 System V, `rsi` contains the `x` argument for this method and `rax` is the return register.

`lea` does not dereference memory here. The instruction simply computes:

```text
rax = rsi + 1
```

## The three dispatch cases

### 1. Static dispatch

The static version is generic:

```rust
#[inline(always)]
pub fn static_dispatch<T: Operation>(
    op: &T,
    mut x: i64,
    iterations: u64,
) -> i64 {
    for _ in 0..iterations {
        x = op.apply(std::hint::black_box(x));
    }

    x
}
```

At the Rust source level, this works with any `T: Operation`.

For this benchmark the caller uses `AddOne`, so Rust monomorphizes the generic code for that concrete type.

Conceptually:

```text
static_dispatch<T>
        ↓
static_dispatch<AddOne>
        ↓
AddOne::apply is known
        ↓
inline x + 1
```

The hot loop becomes approximately:

```asm
.Lloop:
    mov     qword ptr [rsp], r14

    # black_box(x)

    mov     r14, qword ptr [rsp]
    inc     r14
    dec     rax
    jne     .Lloop
```

The important instruction is:

```asm
inc r14
```

That is the complete inlined implementation of:

```rust
op.apply(x)
```

There is no function call, function pointer lookup, or vtable lookup in the hot loop.

### 2. Dynamic dispatch that can be devirtualized

The second version accepts a trait object:

```rust
#[inline(always)]
pub fn dynamic_dispatch_devirt(
    op: &dyn Operation,
    mut x: i64,
    iterations: u64,
) -> i64 {
    for _ in 0..iterations {
        x = op.apply(std::hint::black_box(x));
    }

    x
}
```

This is important: at the Rust type level, `op` really is:

```rust
&dyn Operation
```

So the source code contains dynamic dispatch.

However, the benchmark calls this function with a concrete `&AddOne`:

```rust
let result = dynamic_dispatch_devirt(op, 0, ITERATIONS);
```

and `dynamic_dispatch_devirt` is marked:

```rust
#[inline(always)]
```

Inlining exposes the surrounding caller context to the optimizer. LLVM can see where the trait object came from and determine that the concrete implementation is `AddOne`.

It can therefore transform:

```text
&AddOne
    ↓
&dyn Operation
    ↓
op.apply(x)
```

back into effectively:

```text
AddOne::apply(x)
```

and then inline `AddOne::apply()` itself.

The resulting hot loop is effectively the same as the static version:

```asm
.Lloop:
    mov     qword ptr [rsp], r14

    # black_box(x)

    mov     r14, qword ptr [rsp]
    inc     r14
    dec     rax
    jne     .Lloop
```

Again, the important part is:

```asm
inc r14
```

There is no indirect call left.

This is **devirtualization**: a call that is dynamic at the source level has been resolved to a concrete implementation during optimization.

The benchmark result reflects this: the static and devirtualized versions take approximately the same amount of time.

### 3. Forced dynamic dispatch

The third version also accepts `&dyn Operation`, but deliberately makes the trait object opaque on every iteration:

```rust
#[inline(always)]
pub fn dynamic_dispatch(
    op: &dyn Operation,
    mut x: i64,
    iterations: u64,
) -> i64 {
    for _ in 0..iterations {
        x = std::hint::black_box(op)
            .apply(std::hint::black_box(x));
    }

    x
}
```

A `&dyn Operation` is effectively a fat pointer containing:

```text
data pointer
vtable pointer
```

`black_box(op)` prevents the optimizer from carrying its knowledge of those values through the barrier.

The resulting hot loop looks approximately like:

```asm
.Lloop:
    mov     qword ptr [rsp + 8], r14
    mov     qword ptr [rsp + 16], r12

    # black_box(op)

    mov     qword ptr [rsp], rax

    # black_box(x)

    mov     rdi, qword ptr [rsp + 8]
    mov     rax, qword ptr [rsp + 16]
    mov     rsi, qword ptr [rsp]
    call    qword ptr [rax + 24]
    dec     r15
    jne     .Lloop
```

The key instruction is:

```asm
call qword ptr [rax + 24]
```

At that point `rax` contains the vtable pointer.

The instruction therefore:

1. reads the method pointer stored at offset `24` in the vtable;
2. performs an indirect call to that method.

The called `AddOne::apply` then executes:

```asm
lea rax, [rsi + 1]
ret
```

So this path preserves a real runtime-selected call boundary.

## Static vs devirtualized vs dynamic assembly

Ignoring the bookkeeping introduced by `black_box`, the essential difference is:

```text
STATIC                  DEVIRTUALIZED DYNAMIC       FORCED DYNAMIC

inc rax                 inc rax                     call [vtable + 24]
                                                    lea rax, [rsi + 1]
                                                    ret

dec ...                 dec ...                     dec ...
jne loop                jne loop                    jne loop
```

The first two columns are the important result.

At the Rust source level they are different:

```rust
&T
```

versus:

```rust
&dyn Operation
```

but after optimization they can become effectively identical machine code.

The third version demonstrates what happens when the dynamic target cannot be propagated through the optimization barrier.

## What `black_box` is doing

`std::hint::black_box` is essential to this benchmark, but it is used for two different reasons.

### `black_box(x)`

All three versions make `x` opaque:

```rust
std::hint::black_box(x)
```

Without this, LLVM can recognize that the loop:

```rust
for _ in 0..iterations {
    x = x + 1;
}
```

is equivalent to:

```rust
x + iterations
```

and eliminate the billion iterations entirely.

That would make the benchmark meaningless.

The generated assembly commonly contains a pattern such as:

```asm
mov qword ptr [rsp], r14
#APP
#NO_APP
mov r14, qword ptr [rsp]
```

The store and reload are generated as part of keeping the value opaque to the optimizer.

`#APP` and `#NO_APP` are assembler-output markers around inline assembly. They are not CPU instructions and do not themselves consume execution time.

### `black_box(op)`

Only the forced dynamic version additionally does:

```rust
std::hint::black_box(op)
```

This serves a different purpose.

Without it, the optimizer may retain enough information about the trait object to optimize the dispatch — potentially by devirtualizing it, or at least by moving invariant method lookup work out of the loop.

With `black_box(op)`, the trait object's data pointer and vtable pointer are made opaque on every iteration, keeping the vtable-based dispatch visible in the generated hot loop.

This means the forced-dynamic benchmark is not intended to measure the isolated latency of a single indirect `call` instruction.

It measures the generated execution path when the dynamic target is deliberately kept opaque, including the bookkeeping required to preserve that opacity.

## Why the devirtualized case matters

A common simplified description is:

```text
generics / impl Trait  → static dispatch
dyn Trait              → dynamic dispatch
```

That is correct at the Rust language level, but it does not necessarily describe the final machine code.

Optimization can change:

```text
dyn Trait
    ↓
vtable call
```

into:

```text
dyn Trait
    ↓
concrete target proven
    ↓
devirtualization
    ↓
method inlining
```

The resulting machine code may therefore be indistinguishable from code written using static dispatch.

This benchmark demonstrates both outcomes using the same trait and the same implementation.

## A note about vtable layout

For this build, the first trait method is reached at offset `24`:

```asm
call qword ptr [rax + 24]
```

Conceptually, the observed vtable begins with metadata followed by the method pointer:

```text
+0    drop-related entry
+8    size
+16   alignment
+24   Operation::apply
```

This is useful for understanding the generated assembly, but Rust's trait-object vtable layout is an implementation detail and should not be treated as a stable ABI.

## A note about GOT calls

You may also see assembly such as:

```asm
call qword ptr [rip + some_function@GOTPCREL]
```

This should **not** automatically be confused with trait dynamic dispatch.

`GOTPCREL` is normal ELF position-independent linking through the Global Offset Table.

For example:

```asm
call qword ptr [rip + dynamic_dispatch@GOTPCREL]
```

still refers to the specific named function `dynamic_dispatch`.

By contrast, inside the forced-dynamic loop:

```asm
call qword ptr [rax + 24]
```

uses a runtime-provided vtable pointer and selects the trait method through it.

That is the dispatch operation this benchmark is interested in.

## Benchmark wrappers

The benchmark functions are deliberately marked `#[inline(never)]`:

```rust
#[inline(never)]
fn benchmark_static(op: &AddOne) -> (Duration, i64) {
    let start = Instant::now();

    let result = static_dispatch(op, 0, ITERATIONS);

    (start.elapsed(), result)
}
```

and equivalently for the other two cases.

This creates convenient boundaries in the generated assembly:

```text
benchmark_static
benchmark_dynamic_devirt
benchmark_dynamic
```

while the dispatch functions themselves are `#[inline(always)]`.

That combination is intentional:

```text
benchmark wrapper
    #[inline(never)]
        ↓
stable assembly boundary

dispatch implementation
    #[inline(always)]
        ↓
optimizer can see it inside the wrapper
```

This makes it easier to inspect the effect of optimization without allowing the entire benchmark wrapper to disappear into `main`.

## Compiler version

Results will vary by CPU, operating system, compiler version, CPU frequency scaling, core placement, and system load.

The assembly shown in this repository was generated with:

```text
rustc 1.98.1
```

## Generating the assembly

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

The files in `docs/assets/` are copies of generated assembly files so the generated code can be inspected without rebuilding the project.

## What this benchmark demonstrates

This benchmark does **not** attempt to establish a universal performance ratio between static and dynamic dispatch.

It demonstrates three optimization outcomes.

With static dispatch:

```text
&T
    ↓
monomorphization
    ↓
concrete implementation known
    ↓
method inlining
    ↓
inc
```

With devirtualized dynamic dispatch:

```text
&dyn Operation
    ↓
concrete trait-object origin visible
    ↓
devirtualization
    ↓
method inlining
    ↓
inc
```

With deliberately forced dynamic dispatch:

```text
&dyn Operation
    ↓
black_box(op)
    ↓
target kept opaque
    ↓
vtable method slot
    ↓
indirect call
    ↓
AddOne::apply
    ↓
return
```

The main result is therefore not simply:

> static dispatch is faster than dynamic dispatch.

The more interesting result is:

> **`dyn Trait` is a source-level dispatch mechanism, not a guarantee that an indirect call will survive optimization.**

When the compiler can prove the concrete target, dynamic dispatch can disappear completely.

When it cannot, the generated code retains the vtable lookup and indirect call.

For a deliberately tiny operation such as `x + 1`, that difference is especially easy to see.
