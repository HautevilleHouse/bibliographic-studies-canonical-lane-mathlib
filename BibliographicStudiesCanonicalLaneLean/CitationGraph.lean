import BibliographicStudiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure CitationGraphPackage where
  nodes : List String
  edges : List (String × String)
  isAcyclic : Prop

structure CitationGraphEvidence (G : CitationGraphPackage) where
  nodesNonempty : G.nodes ≠ []
  edgesWithinNodes : ∀ (a, b) ∈ G.edges, a ∈ G.nodes ∧ b ∈ G.nodes

def CitationGraphClosed (G : CitationGraphPackage) : Prop :=
  G.nodes ≠ [] ∧ ∀ (a, b) ∈ G.edges, a ∈ G.nodes ∧ b ∈ G.nodes

theorem citation_graph_closed_from_evidence (G : CitationGraphPackage)
    (E : CitationGraphEvidence G) : CitationGraphClosed G := by
  exact And.intro E.nodesNonempty E.edgesWithinNodes

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse