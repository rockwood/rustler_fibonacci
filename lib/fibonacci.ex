defmodule Fibonacci do
  defmodule Elixir do
    def run(number) do
      number |> do_run() |> List.first()
    end

    def do_run(1), do: [0]

    def do_run(2), do: [1 | do_run(1)]

    def do_run(number) when number > 2 do
      [x, y | _] = all = do_run(number - 1)

      [x + y | all]
    end
  end

  defmodule Rust do
    use Rustler, otp_app: :fibonacci, crate: "fibonacci_rust"

    def run(_number), do: :erlang.nif_error(:nif_not_loaded)
  end
end
