use std::time::Duration;
use std::time::Instant;

use devirtualization_test_lib::dynamic_dispatch_devirt;
use devirtualization_test_lib::{AddOne, dynamic_dispatch, static_dispatch};

const ITERATIONS: u64 = 1_000_000_000;
const RUNS: usize = 5;

#[inline(never)]
fn benchmark_static(op: &AddOne) -> (Duration, i64) {
    let start = Instant::now();

    let result = static_dispatch(op, 0, ITERATIONS);

    (start.elapsed(), result)
}

#[inline(never)]
fn benchmark_dynamic_devirt(op: &AddOne) -> (Duration, i64) {
    let start = Instant::now();

    let result = dynamic_dispatch_devirt(op, 0, ITERATIONS);

    (start.elapsed(), result)
}

#[inline(never)]
fn benchmark_dynamic(op: &AddOne) -> (Duration, i64) {
    let start = Instant::now();

    let result = dynamic_dispatch(op, 0, ITERATIONS);

    (start.elapsed(), result)
}

fn main() {
    let op = AddOne;

    println!("Iterations: {ITERATIONS}");
    println!();

    for run in 1..=RUNS {
        let (static_time, static_result) = benchmark_static(&op);
        let (dynamic_time, dynamic_result) = benchmark_dynamic(&op);
        let (dynamic_devirt_time, dynamic_devirt_result) = benchmark_dynamic_devirt(&op);

        assert_eq!(static_result, dynamic_result);
        assert_eq!(static_result, dynamic_devirt_result);

        println!(
            "run {run}: static = {:8.3} ms | devirt = {:8.3} | dynamic = {:8.3} ms | dynamic/static = {:.2}x",
            static_time.as_secs_f64() * 1000.0,
            dynamic_devirt_time.as_secs_f64() * 1000.0,
            dynamic_time.as_secs_f64() * 1000.0,
            dynamic_time.as_secs_f64() / static_time.as_secs_f64(),
        );
    }
}
