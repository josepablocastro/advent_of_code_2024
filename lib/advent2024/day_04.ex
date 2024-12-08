defmodule Advent2024.Day04 do
  def part1(data) do
    # data
    # |> IO.inspect()

    # find_xmas(data, :right, [], 5, 0, 0)

    Enum.reduce(0..(data.rows - 1), 0, fn row, xmas_count ->
      Enum.reduce(0..(data.cols - 1), xmas_count, fn col, xmas_count_c ->
        xmas_count_c = find_xmas(data, :right, [], col, row, xmas_count_c)
        xmas_count_c = find_xmas(data, :left, [], col, row, xmas_count_c)
        xmas_count_c = find_xmas(data, :up, [], col, row, xmas_count_c)
        xmas_count_c = find_xmas(data, :down, [], col, row, xmas_count_c)
        xmas_count_c = find_xmas(data, :dul, [], col, row, xmas_count_c)
        xmas_count_c = find_xmas(data, :dur, [], col, row, xmas_count_c)
        xmas_count_c = find_xmas(data, :ddl, [], col, row, xmas_count_c)
        find_xmas(data, :ddr, [], col, row, xmas_count_c)
      end)
    end)
    |> IO.inspect()
  end

  def part2(data) do
    x1 =
      [
        ["M", ".", "M"],
        [".", "A", "."],
        ["S", ".", "S"]
      ]
      |> Matrix.new()

    x2 =
      [
        ["S", ".", "S"],
        [".", "A", "."],
        ["M", ".", "M"]
      ]
      |> Matrix.new()

    x3 =
      [
        ["M", ".", "S"],
        [".", "A", "."],
        ["M", ".", "S"]
      ]
      |> Matrix.new()

    x4 =
      [
        ["S", ".", "M"],
        [".", "A", "."],
        ["S", ".", "M"]
      ]
      |> Matrix.new()

    xs =
      [x1, x2, x3, x4]

    # |> IO.inspect()

    Enum.reduce(0..(data.rows - 1), 0, fn row, xmas_count ->
      Enum.reduce(0..(data.cols - 1), xmas_count, fn col, xmas_count_c ->
        sub =
          data
          |> Matrix.sub_matrix(col, row, 3, ".")
          |> to_x()

        if Enum.any?(xs, &Matrix.equals?(&1, sub)) do
          xmas_count_c + 1
        else
          xmas_count_c
        end
      end)
    end)
  end

  def to_x(matrix) do
    matrix
    |> Matrix.put_value(1, 0, ".")
    |> Matrix.put_value(0, 1, ".")
    |> Matrix.put_value(2, 1, ".")
    |> Matrix.put_value(1, 2, ".")
  end

  def find_xmas(
        %Matrix{} = matrix,
        direction,
        current_word,
        x,
        y,
        count
      ) do
    # IO.inspect("#{x},#{y} #{direction} #{current_word}")
    if valid?(current_word) do
      if complete?(current_word) do
        count + 1
      else
        if Matrix.out_of_bounds?(matrix, x, y) do
          count
        else
          case Matrix.get_val!(matrix, x, y) do
            :error_x ->
              count

            :error_y ->
              count

            letter ->
              {new_x, new_y} = next(direction, x, y)

              find_xmas(
                matrix,
                direction,
                current_word ++ [letter],
                new_x,
                new_y,
                count
              )
          end
        end
      end
    else
      # Si la palabra no es v\303\241lida no tiene sentido seguir
      # buscando
      count
    end
  end

  def valid?([]), do: true

  def valid?(current_word) do
    current_word = Enum.join(current_word)
    String.contains?("XMAS", current_word)
    # || String.contains?("SAMX", current_word)
  end

  def complete?(["X", "M", "A", "S"]), do: true
  # def complete?(["S", "A", "M", "X"]), do: true
  def complete?(_), do: false

  def next(:left, x, y), do: {x - 1, y}
  def next(:right, x, y), do: {x + 1, y}
  def next(:up, x, y), do: {x, y - 1}
  def next(:down, x, y), do: {x, y + 1}
  def next(:dul, x, y), do: {x - 1, y - 1}
  def next(:dur, x, y), do: {x + 1, y - 1}
  def next(:ddl, x, y), do: {x - 1, y + 1}
  def next(:ddr, x, y), do: {x + 1, y + 1}
end
