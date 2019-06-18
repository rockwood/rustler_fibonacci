# Fibonacci

Demo project showing performance advantages of [Rustler](https://github.com/rusterlium/rustler)

# Usage

    iex> Fibonacci.Elixir.run(50)
    7778742049

    iex> Fibonacci.Rust.run(50)
    7778742049

# Benchmarks

    > mix run benchmark/fibonacci_benchmark.exs
    ...

    Benchmarking Elixir...
    Benchmarking Rust...

    Name             ips        average  deviation         median         99th %
    Rust          3.02 M        0.33 μs   ±207.47%           0 μs           1 μs
    Elixir        0.55 M        1.81 μs  ±1502.85%           2 μs           3 μs

    Comparison:
    Rust          3.02 M
    Elixir        0.55 M - 5.47x slower +1.48 μs

# Tests

    > mix test
