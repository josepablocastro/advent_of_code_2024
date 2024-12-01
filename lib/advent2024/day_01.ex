defmodule Advent2024.Day01 do
  def part1(col1, col2) do
    col1 = Enum.sort(col1)
    col2 = Enum.sort(col2)

    Enum.zip(col1, col2)
    |> Enum.map(fn {c1, c2} ->
      {c1, c2, abs(c1 - c2)}
    end)
    |> Enum.reduce(0, fn {_c1, _c2, d}, total -> d + total end)
    |> IO.inspect(label: "Part1")
  end

  def part2(col1, col2) do
    col1 = Enum.sort(col1)
    col2 = Enum.sort(col2)

    col_2_location_frequency_count =
      Enum.reduce(col2, %{}, fn location_id, location_frequency_count ->
        Map.update(location_frequency_count, location_id, 1, fn c -> c + 1 end)
      end)

    Enum.reduce(col1, 0, fn location_id, score ->
      freq = Map.get(col_2_location_frequency_count, location_id, 0)
      freq * location_id + score
    end)
    |> IO.inspect(label: "Part2")
  end
end
