enum ColorEnums {
  black,
  brown,
  red,
  orange,
  yellow,
  green,
  blue,
  violet,
  grey,
  white,
}

type Color = keyof typeof ColorEnums

export const colorCode = (color: Color) => ColorEnums[color]

export const COLORS = Object.values(ColorEnums).filter(n => isNaN(Number(n)))