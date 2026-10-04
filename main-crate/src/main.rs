use std::hint::black_box;

use devirtualization_test_lib::{Operation, dynamic_call};

struct AddOne;
struct MulTwo;

impl Operation for AddOne {
    #[inline(never)]
    fn another(&self) -> i64 {
        1
    }

    #[inline(never)]
    fn apply(&self, x: i64) -> i64 {
        x + 1
    }
}

impl Operation for MulTwo {
    #[inline(never)]
    fn another(&self) -> i64 {
        2
    }

    #[inline(never)]
    fn apply(&self, x: i64) -> i64 {
        x * 2
    }
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
