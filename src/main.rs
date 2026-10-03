use std::hint::black_box;

trait Operation {
    fn apply(&self, x: i64) -> i64;
}

struct AddOne;

impl Operation for AddOne {
    #[inline(never)]
    fn apply(&self, x: i64) -> i64 {
        x + 1
    }
}

#[inline(never)]
fn dynamic_call(op: &dyn Operation, x: i64) -> i64 {
    op.apply(x)
}

#[inline(never)]
fn devirtualizable(x: i64) -> i64 {
    let op = AddOne;

    // We explicitly create a trait object.
    let op: &dyn Operation = &op;

    dynamic_call(op, x)
}

fn main() {
    println!("{}", devirtualizable(black_box(41)));
}
