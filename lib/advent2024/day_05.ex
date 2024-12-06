defmodule Advent2024.Day05 do
  def part1({rules, manuals}) do
    rules = compute_rules(rules)

    manuals
    |> Enum.filter(&valid_manual?(&1, rules))
    |> Enum.map(&middle_page/1)
    |> Enum.sum()
    |> IO.inspect(label: "Part1")
  end

  def part2({rules, manuals}) do
    com_rules = compute_rules(rules)
    # IO.inspect(rules)

    manuals
    |> Enum.reject(&valid_manual?(&1, com_rules))
    |> Enum.map(fn manual ->
      Enum.sort(manual, fn a, b ->
        [a, b] in rules
      end)
    end)
    |> Enum.map(&middle_page/1)
    |> Enum.sum()
    |> IO.inspect(label: "Part2")
  end

  def fix_manual(manual, rules) do
    # Enum.find(
    #   manual,
    #   fn page ->
    #     rules_for_page = Map.get(rules, page, [])

    #     break_page_rule = Enum.any?(rules_for_page, fn r -> r in manual end)

    #     Enum.any?()
    #   end
    # )
    #
    Enum.reduce(
      manual,
      {0, []},
      fn page, acc ->
        {i, new_manual} = acc

        rules_for_page = Map.get(rules, page, [])

        Enum.find_index(new_manual, fn r -> r in rules_for_page end)
        # |> IO.inspect(label: "find index")
        |> case do
          nil ->
            # no se restringe
            {i + 1, [page | new_manual]}

          index ->
            {i + 1, List.insert_at(new_manual, index + 1, page)}
        end

        # |> IO.inspect(label: "Step")
      end
    )
    |> IO.inspect(label: "Final")

    manual
  end

  def middle_page(manual) do
    middle = floor(length(manual) / 2.0)
    String.to_integer(Enum.at(manual, middle))
  end

  def valid_manual?(manual, rules) do
    Enum.reduce_while(manual, {[], true}, fn page, state ->
      {previous_pages, valid} = state

      rules_for_page = Map.get(rules, page, [])
      break_page_rule = Enum.any?(rules_for_page, fn r -> r in previous_pages end)

      if break_page_rule do
        {:halt, {[page | previous_pages], false}}
      else
        {:cont, {[page | previous_pages], valid}}
      end
    end)
    |> elem(1)
  end

  def compute_rules_reverse(rules) do
    Enum.reduce(
      rules,
      %{},
      fn [page, page_rule], acc ->
        Map.update(acc, page_rule, [page], fn page_rules -> [page | page_rules] end)
      end
    )
  end

  def compute_rules(rules) do
    Enum.reduce(
      rules,
      %{},
      fn [page, page_rule], acc ->
        Map.update(acc, page, [page_rule], fn page_rules -> [page_rule | page_rules] end)
      end
    )
  end
end
