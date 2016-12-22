defmodule MountainView.Grid.Draw do

  def size(w, h) do
    Enum.map(1..w,
      fn x ->
        Enum.map(1..h,
          fn y -> {x, y}
      end)
    end)
    |> List.flatten
  end

end
