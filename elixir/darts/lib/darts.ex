defmodule Darts do
  @type position :: {number, number}
  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    lands = :math.sqrt(
      (x*x) + (y*y)
    )

    cond do
      lands > 10 -> 0
      lands > 5 -> 1
      lands > 1 -> 5
      true -> 10
    end
  end
end
