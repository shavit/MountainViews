defmodule Quicksort do
  def unordered do
    [8,1,3,4,7,5,6,9,11]
  end

  def tree do
    [
      [2,3],
      [10, [4, 7]],
      [[6, 5], [8, 11], [14, 12]],
      [17, 16, 15]
    ]
  end


  def sorted([]), do: []
  def sorted([pivot | unordered_list]) do
    # Check if each item is greater than the pivot
    # a - match, b - rest
    {a, b} = Enum.partition(unordered_list, fn item -> pivot > item end)
    # List a is less than the pivot
    # List b is greater than the pivot
    # Each list will be recursively sorted
    sorted(a) ++ [pivot] ++ sorted(b)
  end

  def tree_sort([]), do: []
  def tree_sort([h | t]) do
    cond do
      t |> length == 0 -> h
      t |> length == 1 -> t |> List.first
      # tree_sort(h) > tree_sort(t) -> tree_sort(h)
      # true -> tree_sort(t)
      true -> Enum.partition(t, fn item -> item > h end)
    end
  end

  def call do
    # unordered |> sorted
    tree |> tree_sort()
  end
end

IO.puts "The tree:"
IO.inspect Quicksort.tree
IO.puts ""
IO.inspect Quicksort.call
