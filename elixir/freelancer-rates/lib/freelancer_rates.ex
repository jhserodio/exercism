defmodule FreelancerRates do
  @cent 100
  @days_worklabe 22

  def daily_rate(hourly_rate), do: 8.0 * hourly_rate

  def apply_discount(before_discount, discount) do
    before_discount - (before_discount * (discount / @cent))
  end

  def monthly_rate(hourly_rate, discount) do
    hourly_rate * @days_worklabe
      |> daily_rate
      |> apply_discount(discount)
      |> ceil
  end

  def days_in_budget(budget, hourly_rate, discount) do
    day_cost = monthly_rate(hourly_rate, discount)
      |> div(@days_worklabe)
    budget / day_cost
      |> Float.floor(1)
  end
end
