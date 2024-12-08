defmodule Advent2024.Day07 do
  def part1(data) do
    # hd(data)
    # |> generate_equation([])
    # |> IO.inspect()

    Enum.map(data, &generate_equation(&1))
    |> Enum.reject(fn {_result, equations} ->
      Enum.map(equations, &evaluate_equation(&1))
      |> Enum.all?(fn x -> x == 0 end)
    end)
    |> Enum.reduce(0, fn {r, _}, acc -> r + acc end)
    |> IO.inspect(label: "Part1")
  end

  def evaluate_equation({result, equation}) do
    equation_result =
      Enum.reduce(equation, {0, :p}, fn
        :p, {res, _o} ->
          {res, :p}

        :m, {res, _o} ->
          {res, :m}

        :o, {res, _o} ->
          {res, :o}

        v, {res, :p} ->
          {res + v, :p}

        v, {res, :m} ->
          {res * v, :m}

        v, {res, :o} ->
          {Integer.undigits(Integer.digits(res) ++ Integer.digits(v)), :o}
      end)
      |> elem(0)

    cond do
      equation_result == result ->
        result

      true ->
        0
    end
  end

  def generate_equation({result, operators}) do
    equations =
      generate_equation({result, operators}, [])
      |> List.flatten()
      |> Enum.uniq()

    {result, equations}
  end

  def generate_equation({result, []}, combinations) do
    [_ | combinations] =
      combinations
      |> Enum.reverse()

    {result, combinations}
    # combinations
  end

  def generate_equation({result, operators}, combinations) do
    [operator | remaining_operators] = operators

    a = generate_equation({result, remaining_operators}, [operator, :p | combinations])
    b = generate_equation({result, remaining_operators}, [operator, :m | combinations])
    c = generate_equation({result, remaining_operators}, [operator, :o | combinations])
    [a, b, c]
  end
end
