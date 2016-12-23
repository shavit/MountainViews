defmodule MountainView.Grid.Draw do
  alias MountainView.Grid.Point

  def random_point_type do
    [:node, :b]
    |> Enum.at((:rand.uniform(2)-1))
  end

  def size(w, h) do
    Enum.map(1..w,
      fn x ->
        Enum.map(1..h,
          fn y -> %Point{x: x, y: y, type: random_point_type}
      end)
    end)
    |> List.flatten
  end

end
