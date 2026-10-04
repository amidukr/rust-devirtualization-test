use std::hint::black_box;
use std::time::Duration;
use std::time::Instant;

use devirtualization_test_lib::{AddOne, dynamic_dispatch, static_dispatch};

const ITERATIONS: u64 = 1_000_000_000;
const RUNS: usize = 5;

#[inline(never)]
fn benchmark_static(op: &AddOne) -> (Duration, i64) {
    let start = Instant::now();

    let result = black_box(static_dispatch(
        black_box(op),
        black_box(0),
        black_box(ITERATIONS),
    ));

    (start.elapsed(), result)
}

#[inline(never)]
fn benchmark_dynamic(op: &AddOne) -> (Duration, i64) {
    let start = Instant::now();

    let result = black_box(dynamic_dispatch(
        black_box(op),
        black_box(0),
        black_box(ITERATIONS),
    ));

    (start.elapsed(), result)
}

fn main() {
    let op = AddOne;

    println!("Iterations: {ITERATIONS}");
    println!();

    for run in 1..=RUNS {
        let (static_time, static_result) = benchmark_static(&op);
        let (dynamic_time, dynamic_result) = benchmark_dynamic(&op);

        assert_eq!(static_result, dynamic_result);

        println!(
            "run {run}: static = {:8.3} ms | dynamic = {:8.3} ms | dynamic/static = {:.2}x",
            static_time.as_secs_f64() * 1000.0,
            dynamic_time.as_secs_f64() * 1000.0,
            dynamic_time.as_secs_f64() / static_time.as_secs_f64(),
        );
    }
}
