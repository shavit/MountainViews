defmodule MountainView.Grid.Point do
  @derive [Poison.Encoder]

  defstruct [:x, :y, :type]
end
