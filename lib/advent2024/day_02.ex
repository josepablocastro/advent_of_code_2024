defmodule Advent2024.Day02 do
  def part1(data) do
    [
      [7, 6, 4, 2, 1],
      [1, 2, 7, 8, 9],
      [9, 7, 6, 2, 1],
      [1, 3, 2, 4, 5],
      [8, 6, 4, 4, 1],
      [1, 3, 6, 7, 9]
    ]

    Enum.filter(data, &is_safe?/1)
    |> Enum.count()
    |> IO.inspect(label: "Part1")
  end

  def part2(data) do
    [
      [7, 6, 4, 2, 1],
      [1, 2, 7, 8, 9],
      [9, 7, 6, 2, 1],
      [1, 3, 2, 4, 5],
      [8, 6, 4, 4, 1],
      [1, 3, 6, 7, 9]
    ]

    data
    |> Enum.filter(&is_safe_with_dampening?/1)
    |> Enum.count()
    |> IO.inspect(label: "Part2")
  end

  def is_safe_with_dampening?(rep) do
    if is_safe?(rep) do
      true
    else
      0..(length(rep) - 1)
      |> Enum.any?(fn i ->
        is_safe?(List.delete_at(rep, i))
      end)
    end
  end

  def is_safe?([a, b | _rest] = rep) when a > b do
    # IO.inspect(rep, label: "Report", charlists: :as_list)

    Enum.chunk_every(rep, 2, 1, :discard)
    |> Enum.map(fn [n, m] ->
      {[n, m], n > m, abs(n - m) > 0 && abs(n - m) < 4}
      # |> IO.inspect(charlists: :as_list)
    end)
    |> Enum.all?(fn {_, ord, diff} -> ord && diff end)

    # |> IO.inspect()
  end

  def is_safe?([a, b | _rest] = rep) when a < b do
    # IO.inspect(rep, label: "Report", charlists: :as_list)

    Enum.chunk_every(rep, 2, 1, :discard)
    |> Enum.map(fn [n, m] ->
      {[n, m], n < m, abs(m - n) > 0 && abs(m - n) < 4}
      # |> IO.inspect(charlists: :as_list)
    end)
    |> Enum.all?(fn {_, ord, diff} -> ord && diff end)

    # |> IO.inspect()
  end

  def is_safe?([a, a | _rest]) do
    # Si empiezan con números iguales no puede ser segura
    false
  end
end
