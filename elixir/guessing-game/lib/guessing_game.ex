defmodule GuessingGame do
  def compare(secret, guess) when secret === guess, do: "Correct"

  def compare(secret, guess) when secret+1 === guess or secret-1 === guess do
    "So close"
  end
  
  def compare(_secret, guess) when guess === :no_guess, do: "Make a guess"
  
  def compare(_secret), do: "Make a guess"
  
  def compare(secret, guess) when secret > guess, do: "Too low"
  
  def compare(secret, guess) when secret < guess, do: "Too high"
end
