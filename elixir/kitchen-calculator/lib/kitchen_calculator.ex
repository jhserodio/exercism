defmodule KitchenCalculator do
  def get_volume({ _, val }), do: val

  def to_milliliter({unit, val}) do
    case unit do
      :cup -> {:milliliter, val * 240}
      :fluid_ounce -> {:milliliter,  val * 30}
      :teaspoon -> {:milliliter,  val * 5}
      :tablespoon -> {:milliliter, val * 15}
      _ -> {:milliliter, val * 1}
    end
  end

  def from_milliliter({_, val}, unit) do
    case unit do
      :cup -> {unit, val / 240}
      :fluid_ounce -> {unit,  val / 30}
      :teaspoon -> {unit,  val / 5}
      :tablespoon -> {unit, val / 15}
      _ -> {unit, val}
    end
  end

  def convert(volume_pair, unit) do
    to_milliliter(volume_pair)
    |> from_milliliter(unit)
  end
end
