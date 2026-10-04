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

#[inline(never)]
pub fn static_dispatch<T: Operation>(op: &T, mut x: i64, iterations: u64) -> i64 {
    for _ in 0..iterations {
        x = op.apply(x);
    }

    x
}

#[inline(never)]
pub fn dynamic_dispatch(op: &dyn Operation, mut x: i64, iterations: u64) -> i64 {
    for _ in 0..iterations {
        x = op.apply(x);
    }

    x
}
