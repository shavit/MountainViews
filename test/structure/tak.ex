defmodule Tak do
  def tak(x,y,z) do
    IO.puts "X: #{x}, Y: #{y}, Z: #{z}"
    if x > y do
      tak(
        tak(x-1, y, z),
        tak(y-1, z, x),
        tak(z-1, x, y)
      )
    else
      z
    end
  end

  def call do
    tak(3,2,1)
  end
end

IO.inspect Tak.call
