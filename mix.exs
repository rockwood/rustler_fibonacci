defmodule Fibonacci.MixProject do
  use Mix.Project

  def project do
    [
      app: :fibonacci,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      compilers: [:rustler] ++ Mix.compilers(),
      rustler_crates: [fibonacci_rust: []]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:rustler, "~> 0.20.0"},
      {:benchee, "~> 1.0", only: :dev}
    ]
  end
end
