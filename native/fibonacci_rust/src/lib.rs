#[macro_use] extern crate rustler;

use rustler::{Env, Term, NifResult, Encoder};

rustler_export_nifs! {"Elixir.Fibonacci.Rust", [("run", 1, run)], None}

fn run<'a>(env: Env<'a>, args: &[Term<'a>]) -> NifResult<Term<'a>> {
    let n: u64 = args[0].decode()?;

    Ok(do_run(n - 1).encode(env))
}

pub fn do_run(number: u64) -> u64 {
    let mut sum = 0;
    let mut last = 0;
    let mut curr = 1;

    for _i in 1..number {
        sum = last + curr;
        last = curr;
        curr = sum;
    }

    sum
}
