defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    cond do
      (x > 10 or x < 0) and (y > 10 or x < 0) -> 0
      (x <= 10 and x > 5) and (y <= 10 and y > 5) -> 1
      (x <= 5 or x < 1) and (y <= 5 or y < 1) -> 5
      (x < 1) and (y < 1) -> 10
    end
  end
end
