enum EnumResistors {
  'black',
  'brown',
  'red',
  'orange',
  'yellow',
  'green',
  'blue',
  'violet',
  'grey',
  'white'
}

type Color = keyof typeof EnumResistors

export function decodedValue(colors: Color[]): number {
  const n1 = EnumResistors[colors[0]];
  const n2 = EnumResistors[colors[1]];

  return (n1*10)+n2
}
