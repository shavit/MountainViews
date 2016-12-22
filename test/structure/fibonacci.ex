defmodule Fibonacci do

  @doc """
    a - First number
    b - Sum of a and the previous a from iterate(a, b, n-1)
  """
  def iterate(a, b, n) do
    cond do
      n == 0 -> b
      true -> iterate((a+b), a, n-1)
    end
  end

  def call do
    # Run n times
    Fibonacci.iterate(1, 0, _n=7)
  end
end

IO.inspect Fibonacci.call
IO.puts Fibonacci.call == 13
