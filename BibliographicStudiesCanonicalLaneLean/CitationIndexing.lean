import canonicalLaneMathlib.AdmissibleClass
import BibliographicStudiesCanonicalLaneLean.BibliographicObjects

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure IndexingPackage (G : CitationGraph) where
  indexingScheme : String
  retrievalCompleteness : Prop
  indexingEfficiency : Prop

def IndexingClosed (I : IndexingPackage G) : Prop :=
  I.retrievalCompleteness ∧ I.indexingEfficiency

structure IndexingEvidence (I : IndexingPackage G) where
  retrievalCompletenessClosed : I.retrievalCompleteness
  indexingEfficiencyClosed : I.indexingEfficiency

theorem indexing_closed_from_evidence (I : IndexingPackage G) (E : IndexingEvidence I) :
    IndexingClosed I := by
  exact And.intro E.retrievalCompletenessClosed E.indexingEfficiencyClosed

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse