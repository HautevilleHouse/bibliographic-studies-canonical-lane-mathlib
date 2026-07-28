import canonicalLaneMathlib.AdmissibleClass
import BibliographicStudiesCanonicalLaneLean.CitationIndexing

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure CitationAnalysisEvidenceTerms (G : CitationGraph) (I : IndexingPackage G) where
  citationClosureIndexed : I.retrievalCompleteness
  citationClosureEvidence : BibliographicWitnessClosed (⟨G, ?_⟩ : BibliographicAdmittedObject)
  indexingClosed : IndexingClosed I

def CitationAnalysisCertificate (G : CitationGraph) : Prop :=
  ∀ I : IndexingPackage G, CitationAnalysisEvidenceTerms G I → IndexingClosed I

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse