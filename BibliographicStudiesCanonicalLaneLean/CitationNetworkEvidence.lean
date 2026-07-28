import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure CitationNetworkPackage where
  sourceId : String
  citedBy : List String
  references : List String
  citationCount : Nat
  impactFactor : Float

structure CitationNetworkEvidence (N : CitationNetworkPackage) where
  citationsConsistent : N.citationCount = N.citedBy.length
  referencesConsistent : N.references.all (fun r => r ≠ "")
  impactFactorNonnegative : N.impactFactor ≥ 0.0

def CitationNetworkClosed (N : CitationNetworkPackage) : Prop :=
  N.citationCount = N.citedBy.length ∧ N.references.all (fun r => r ≠ "") ∧ N.impactFactor ≥ 0.0

theorem citation_network_closed_from_evidence (N : CitationNetworkPackage) (E : CitationNetworkEvidence N) :
    CitationNetworkClosed N := by
  exact And.intro E.citationsConsistent (And.intro E.referencesConsistent E.impactFactorNonnegative)

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse