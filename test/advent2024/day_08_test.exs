defmodule Advent2024.Day08Test do
  use ExUnit.Case

  test "part1" do
    example_data()
    |> Advent2024.Day08.part1()
  end

  def example_data do
    """
    ......#....#
    ...#....0...
    ....#0....#.
    ..#....0....
    ....0....#..
    .#....A.....
    ...#........
    #......#....
    ........A...
    .........A..
    ..........#.
    ..........#.
    """
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(&String.codepoints(&1))
  end
end
