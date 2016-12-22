defmodule GridDrawTest do
  use ExUnit.Case
  doctest MountainView

  test "Draw grid" do
    assert 2 == MountainView.Grid.Draw.size(1,2) |> length
  end
end
