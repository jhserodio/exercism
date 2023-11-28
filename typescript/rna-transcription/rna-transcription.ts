type UnionRNA = 'G' | 'C' | 'T' | 'A';
type UnionDNA = 'C' | 'G' | 'A' | 'U';

interface RnaToDna extends Record<UnionRNA, UnionDNA> {}


export function toRna(rna: UnionRNA): UnionDNA {
  
  const rnaToDna: RnaToDna = {
    G: 'C',
    C: 'G',
    T: 'A',
    A: 'U'
  }

  return rnaToDna[rna]
}
