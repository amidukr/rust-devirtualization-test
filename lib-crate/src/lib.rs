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

#[inline(always)]
pub fn static_dispatch<T: Operation>(op: &T, mut x: i64, iterations: u64) -> i64 {
    for _ in 0..iterations {
        x = op.apply(std::hint::black_box(x));
    }

    x
}

#[inline(always)]
pub fn dynamic_dispatch(op: &dyn Operation, mut x: i64, iterations: u64) -> i64 {
    for _ in 0..iterations {
        x = std::hint::black_box(op).apply(std::hint::black_box(x));
    }

    x
}

#[inline(always)]
pub fn dynamic_dispatch_devirt(op: &dyn Operation, mut x: i64, iterations: u64) -> i64 {
    for _ in 0..iterations {
        x = op.apply(std::hint::black_box(x));
    }

    x
}
