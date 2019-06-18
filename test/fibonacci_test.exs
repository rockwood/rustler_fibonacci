defmodule FibonacciTest do
  use ExUnit.Case

  test "elixir" do
    assert Fibonacci.Elixir.run(10) == 34
    assert Fibonacci.Elixir.run(75) == 1304969544928657
  end

  test "rust" do
    assert Fibonacci.Rust.run(10) == 34
    assert Fibonacci.Rust.run(75) == 1304969544928657
  end
end
