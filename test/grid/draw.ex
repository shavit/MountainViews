defmodule GridDrawTest do
  use ExUnit.Case
  doctest MountainView

  test "Draw grid" do
    assert MountainView.Grid.Draw.size(1,2)
  end
end
