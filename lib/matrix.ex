defmodule Matrix do
  @moduledoc """
  Implementa una matriz como un arreglo de arreglos
  """

  defstruct array: [], cols: 0, rows: 0

  def new do
    %__MODULE__{}
  end

  def new(rows) do
    Enum.reduce(rows, %__MODULE__{}, &add_row(&2, &1))
  end

  def add_row(%__MODULE__{} = matrix, row) do
    %__MODULE__{array: arr, rows: rows, cols: _cols} = matrix
    cols = length(row)

    %__MODULE__{
      array: arr ++ [row],
      rows: rows + 1,
      cols: cols
    }
  end

  def out_of_bounds?(%__MODULE__{} = matrix, x, y) do
    cond do
      x < 0 -> true
      y < 0 -> true
      x > matrix.cols - 1 -> true
      y > matrix.rows - 1 -> true
      true -> false
    end
  end

  def get_val!(%__MODULE__{} = matrix, x, y) do
    %__MODULE__{array: arr, rows: rows} = matrix

    case Enum.at(arr, y, nil) do
      nil ->
        :error_y

      # raise "matrix error want: #{x}, rows: #{rows}"

      row ->
        case Enum.at(row, x, nil) do
          nil ->
            :error_x

          # raise "matrix error want: #{x}, #{y}, rows: #{rows}, #{inspect(row, charlists: :as_lists)}"

          value ->
            value
        end
    end
  end

  def sub_matrix(matrix, x, y, len, errval) do
    Enum.reduce(y..(y + len - 1), new(), fn y, nm ->
      row =
        Enum.reduce(x..(x + len - 1), [], fn x, row ->
          val =
            case get_val!(matrix, x, y) do
              :error_x -> errval
              :error_y -> errval
              val -> val
            end

          row ++ [val]
        end)

      add_row(nm, row)
    end)
  end

  def equals?(m1, m2) do
    [
      List.flatten(m1.array),
      List.flatten(m2.array)
    ]
    |> Enum.zip()
    |> Enum.all?(fn {m, n} -> m == n end)
  end

  def put_value(matrix, x, y, value) do
    %__MODULE__{array: arr} = matrix
    row = Enum.at(arr, y)
    new_row = List.replace_at(row, x, value)
    new_array = List.replace_at(arr, y, new_row)
    %__MODULE__{matrix | array: new_array}
  end
end
