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

  def neighbor(l,p,v) do
    cond do
      p.x > 1 && p.y > 1 ->

    end
  end

  def create_breadth_first_search(w,h) do
    l = size(w,h)
    start = l |> get_point(1,1)
    came_from = [start]
    route = []
    # visited = Map.put(%{},(start.x + start.y), true)
    visited = [start.x + start.y]

    d = l |> Enum.reduce(0, fn row ->
      row |> Enum.reduce(0, fn p ->
        # if !Enum.member?(came_from, (x+y)) do
          route ++ p
        # end
      end)
    end)

    IO.inspect d
    IO.inspect route


    # while frontier not empty

    p = l
  end

end
