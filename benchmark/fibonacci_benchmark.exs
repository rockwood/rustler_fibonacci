Benchee.run(
  %{
    "Elixir" => fn -> Fibonacci.Elixir.run(75) end,
    "Rust" => fn -> Fibonacci.Rust.run(75) end
  }
)
