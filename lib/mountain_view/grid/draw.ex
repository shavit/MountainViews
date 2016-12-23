defmodule MountainView.Grid.Draw do
  alias MountainView.Grid.Point

  def point_types do
    [:node, :block, :visited]
  end

  def random_point_type do
    [:node, :block, :node, :node, :node, :node]
    |> Enum.at((:rand.uniform(6)-1))
  end

  def get_point(l,x,y) do
    l
    |> Enum.at(x-1)
    |> Enum.at(y-1)
  end

  def size(w, h) do
    Enum.map(1..w,
      fn x ->
        Enum.map(1..h,
          fn y ->
            %Point{x: x, y: y, type: random_point_type}
      end)
    end)
  end

  def create_breadth_first_search(w,h) do
    l = size(w,h)
    # starting point
    frontier = l |> get_point(1,1)
    visited = Map.put(%{},(frontier.x + frontier.y), true)

    p = l
  end

end
