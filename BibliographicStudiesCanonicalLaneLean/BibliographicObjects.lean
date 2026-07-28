import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure Publication where
  title : String
  authors : List String
  year : Nat
  citations : List Publication

def citationCount (p : Publication) : Nat := p.citations.length

structure CitationGraph where
  publications : List Publication
  edges : List (Publication × Publication) -- (citing, cited)

def citationClosureProperty (g : CitationGraph) : Prop :=
  ∀ p ∈ g.publications, citationCount p > 0 → ∃ q ∈ g.publications, (q, p) ∈ g.edges

structure BibliographicAdmittedObject where
  graph : CitationGraph
  closureWitness : citationClosureProperty graph
  conclusion : closureWitness

def BibliographicWitnessClosed (O : BibliographicAdmittedObject) : Prop :=
  O.closureWitness

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse