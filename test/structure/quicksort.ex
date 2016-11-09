defmodule Quicksort do
  def unordered do
    # [8,1,3,4,7,5,6,9,11]
    [[8, 7],1,3,4,7,5,6,9,11]
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

  def call do
    sorted(unordered)
  end
end

IO.puts Quicksort.call
