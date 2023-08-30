defmodule Lasagna do
  @preparation_time_for_layer 2
  @expected_minutes_in_oven 40

  def expected_minutes_in_oven(), do: @expected_minutes_in_oven

  def remaining_minutes_in_oven(pastedMinutes) do
    expected_minutes_in_oven() - pastedMinutes
  end

  def preparation_time_in_minutes(layers) do
    @preparation_time_for_layer * layers
  end

  # Please define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(layers, minutes) do
    preparation_time_in_minutes(layers) + minutes
  end

  # Please define the 'alarm/0' function
  def alarm(), do: "Ding!"
end
