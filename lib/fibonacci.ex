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
end
