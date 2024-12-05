defmodule MatrixTest do
  use ExUnit.Case

  test "crear matriz" do
    m =
      Matrix.new()
      |> Matrix.add_row([1, 2, 3])
      |> Matrix.add_row([4, 5, 6])
      |> Matrix.add_row([7, 8, 9])
      |> IO.inspect(charlists: :as_lists)

    assert Matrix.get_val!(m, 0, 0) == 1
    assert Matrix.get_val!(m, 2, 2) == 9
    assert Matrix.get_val!(m, 1, 1) == 5
    assert Matrix.get_val!(m, 1, 0) == 2
    assert Matrix.get_val!(m, 2, 1) == 6
  end

  test "crear sub matriz" do
    m =
      Matrix.new()
      |> Matrix.add_row([1, 2, 3])
      |> Matrix.add_row([4, 5, 6])
      |> Matrix.add_row([7, 8, 9])
      |> IO.inspect(charlists: :as_lists, pretty: true)

    Matrix.sub_matrix(m, 0, 0, 2, 0) |> IO.inspect(charlists: :as_lists, pretty: true)
    Matrix.sub_matrix(m, 1, 1, 2, 0) |> IO.inspect(charlists: :as_lists, pretty: true)
    Matrix.sub_matrix(m, 2, 0, 2, 0) |> IO.inspect(charlists: :as_lists, pretty: true)
  end

  test "comparar matrices" do
    m1 =
      Matrix.new()
      |> Matrix.add_row([1, 2, 3])
      |> Matrix.add_row([4, 5, 6])
      |> Matrix.add_row([7, 8, 9])

    m2 =
      Matrix.new()
      |> Matrix.add_row([1, 2, 3])
      |> Matrix.add_row([4, 5, 6])
      |> Matrix.add_row([7, 8, 9])

    m3 =
      Matrix.new()
      |> Matrix.add_row([1, 2, 3])
      |> Matrix.add_row([4, 5, 6])
      |> Matrix.add_row([7, 0, 9])

    assert Matrix.equals?(m1, m2)
    refute Matrix.equals?(m1, m3)
  end
end
