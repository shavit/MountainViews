defmodule MountainView.Grid.Draw do
  alias MountainView.Grid.Point

  def size(w, h) do
    Enum.map(1..w,
      fn x ->
        Enum.map(1..h,
          fn y -> %Point{x: x, y: y}
      end)
    end)
    |> List.flatten
  end

end
