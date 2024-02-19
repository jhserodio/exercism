type UnionRNA = 'G' | 'C' | 'T' | 'A';
type UnionDNA = 'C' | 'G' | 'A' | 'U';

interface RnaToDna extends Record<UnionRNA, UnionDNA> {}


export function toRna(rnas: string): string {
  
  const rnaToDna: RnaToDna = {
    G: 'C',
    C: 'G',
    T: 'A',
    A: 'U'
  }

  return [ ...rnas ].map(
    rna => {
      let dna = rnaToDna[rna as UnionRNA]

      if (!dna) {
       throw new Error('Invalid input DNA.') 
      }

      return dna;
    }
  ).join('')
}
