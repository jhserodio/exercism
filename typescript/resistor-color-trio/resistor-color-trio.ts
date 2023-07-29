enum EnumResistors {
  "black",
  "brown",
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "violet",
  "grey",
  "white",
}

type Color = keyof typeof EnumResistors;

const prefixMetric = {
  "giga": 1_000_000_000,
  "mega": 1_000_000,
  "kilo": 1_000,
} as const;

export function decodedResistorValue([color1, color2, color3]: Color[]) {
  const resistor = ((EnumResistors[color1] * 10) + EnumResistors[color2]) *
    (10 ** EnumResistors[color3]);

  const [prefix, divisor] = Object.entries(prefixMetric)
    .find(([_, divisor]) => resistor >= divisor) ?? ["", 1];

  return `${resistor / divisor} ${prefix}ohms`;
}
