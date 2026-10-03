use std::hint::black_box;

trait Operation {
    fn apply(&self, x: i64) -> i64;
}

struct AddOne;
struct MulTwo;

impl Operation for AddOne {
    #[inline(never)]
    fn apply(&self, x: i64) -> i64 {
        x + 1
    }
}

impl Operation for MulTwo {
    #[inline(never)]
    fn apply(&self, x: i64) -> i64 {
        x * 2
    }
}

#[inline(never)]
fn dynamic_call(op: &dyn Operation, x: i64) -> i64 {
    op.apply(x) + op.apply(x)
}

#[inline(never)]
fn not_devirtualizable(condition: bool, x: i64) -> i64 {
    let add = AddOne;
    let mul = MulTwo;

    let op: &dyn Operation = if condition { &add } else { &mul };

    dynamic_call(op, x)
}

#[inline(never)]
fn devirtualizable(x: i64) -> i64 {
    let op = AddOne;

    // We explicitly create a trait object.
    let op: &dyn Operation = &op;

    dynamic_call(op, x)
}

fn main() {
    let x = black_box(41);

    println!("{}", devirtualizable(x));

    println!("{}", not_devirtualizable(black_box(true), x));
}
