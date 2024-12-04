defmodule Advent2024.Day03 do
  def part1(data) do
    mul_regex = ~r/mul\(\d{1,3},\d{1,3}\)/

    Regex.scan(mul_regex, data, capture: :all)
    |> Enum.map(&extract_numbers/1)
    |> Enum.map(&multiply/1)
    |> Enum.sum()
    |> IO.inspect(charlists: :as_lists, label: "Part1")
  end

  defp extract_numbers([mul]) do
    num_regex = ~r/\d{1,3}/
    [[n], [m]] = Regex.scan(num_regex, mul, capture: :all)

    [String.to_integer(n), String.to_integer(m)]
  end

  defp multiply([n, m]) do
    n * m
  end

  def part2(data) do
    mul_regex = ~r/mul\(\d{1,3},\d{1,3}\)|don't|do/U

    Regex.scan(mul_regex, data, capture: :all)
    |> Enum.reduce({:do,[]}, &process_command/2)
    |> get_multiplications()
    |> Enum.map(&extract_numbers/1)
    |> Enum.map(&multiply/1)
    |> Enum.sum()
    |> IO.inspect(charlists: :as_lists, label: "Part2")
  end

  defp process_command(command, {:do, acc}) do
    [command] = command 
    case command do
      "do" -> 
        {:do, acc}
      "don't" ->
        {:dont, acc}
      _mult ->
        {:do, [[command] | acc]}
    end
  end

  defp process_command(command, {:dont, acc}) do
    [command] = command 
    case command do
      "do" -> 
        {:do, acc}
      "don't" ->
        {:dont, acc}
      _mult ->
        {:dont, acc}
    end
  end

  defp get_multiplications(res), do: elem(res, 1)

end
