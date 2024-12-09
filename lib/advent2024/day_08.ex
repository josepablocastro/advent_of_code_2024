defmodule Advent2024.Day08 do
  def part1(data) do
    {rows, cols} =
      data_size(data)
      |> IO.inspect(label: "Map Size")

    frequency_points(data, rows)
  end

  def line_equation(a, b) do
    {xa, ya} = a
    {xb, yb} = b

    m = floor((ya - yb) / (xa - xb))
    b = min(ya, yb)
    {m, b}
  end

  def frequency_points(data, row_count) do
    Enum.reduce(
      data,
      {%{}, row_count - 1},
      fn row, acc ->
        {frequencies, row_i} = acc

        {frequencies, _col} =
          Enum.reduce(
            row,
            {frequencies, 0},
            fn frequency, acc_col ->
              {frequencies_, col_i} = acc_col

              {
                Map.update(frequencies_, frequency, [{col_i, row_i}], fn locations ->
                  [{col_i, row_i} | locations]
                end),
                col_i + 1
              }
            end
          )

        {frequencies, row_i - 1}
      end
    )
    |> elem(0)
    |> Enum.reject(fn {k, _v} -> k in [".", "#"] end)
    |> IO.inspect()
  end

  def data_size(data) do
    row_count = Enum.count(data)

    [row | _rows] = data
    col_count = Enum.count(row)

    {col_count, row_count}
  end
end
