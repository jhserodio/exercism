defmodule Lasagna do
  def preparation_time_for_layer do 2 end

  def expected_minutes_in_oven do 40 end

  def remaining_minutes_in_oven(pastedMinutes) do
    expected_minutes_in_oven() - pastedMinutes
  end

  def preparation_time_in_minutes(layers) do
    preparation_time_for_layer() * layers
  end

  # Please define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(layers, minutes) do
    preparation_time_in_minutes(layers) + minutes
  end

  # Please define the 'alarm/0' function
  def alarm do "Ding!" end
end
