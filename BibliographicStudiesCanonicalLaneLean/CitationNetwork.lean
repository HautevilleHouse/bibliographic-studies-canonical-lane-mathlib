import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure CitationNetworkPackage where
  nodes : List BibliographicAdmittedObject
  edges : List (BibliographicAdmittedObject × BibliographicAdmittedObject)
  graphComplete : Prop
  acyclic : Prop
  coverage : Prop

structure CitationNetworkEvidence (C : CitationNetworkPackage) where
  graphCompleteClosed : C.graphComplete
  acyclicClosed : C.acyclic
  coverageClosed : C.coverage

def CitationNetworkClosed (C : CitationNetworkPackage) : Prop :=
  C.graphComplete ∧ C.acyclic ∧ C.coverage

theorem citation_network_closed_from_evidence (C : CitationNetworkPackage)
    (E : CitationNetworkEvidence C) : CitationNetworkClosed C := by
  exact And.intro E.graphCompleteClosed (And.intro E.acyclicClosed E.coverageClosed)

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse