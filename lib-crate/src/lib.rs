pub trait Operation {
    fn another(&self) -> i64;
    fn apply(&self, x: i64) -> i64;
}

#[inline(never)]
pub fn dynamic_call(op: &dyn Operation, x: i64) -> i64 {
    op.apply(x) + op.another()
}
