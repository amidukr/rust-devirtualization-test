use std::hint::black_box;
use std::time::Instant;

use devirtualization_test_lib::{AddOne, dynamic_dispatch, static_dispatch};

const ITERATIONS: u64 = 1_000_000_000;
const RUNS: usize = 5;

fn main() {
    let op = AddOne;

    println!("Iterations: {ITERATIONS}");
    println!();

    for run in 1..=RUNS {
        // Static dispatch
        let start = Instant::now();

        let static_result = black_box(static_dispatch(
            black_box(&op),
            black_box(0),
            black_box(ITERATIONS),
        ));

        let static_time = start.elapsed();

        // Dynamic dispatch
        let start = Instant::now();

        let dynamic_result = black_box(dynamic_dispatch(
            black_box(&op),
            black_box(0),
            black_box(ITERATIONS),
        ));

        let dynamic_time = start.elapsed();

        assert_eq!(static_result, dynamic_result);

        println!(
            "run {run}: static = {:8.3} ms | dynamic = {:8.3} ms | dynamic/static = {:.2}x",
            static_time.as_secs_f64() * 1000.0,
            dynamic_time.as_secs_f64() * 1000.0,
            dynamic_time.as_secs_f64() / static_time.as_secs_f64(),
        );
    }
}
