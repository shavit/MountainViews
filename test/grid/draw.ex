defmodule GridDrawTest do
  use ExUnit.Case
  doctest MountainView

  test "Draw grid" do
    IO.inspect MountainView.Grid.Draw.size(4,2)
    assert MountainView.Grid.Draw.size(1,2)
  end
end
