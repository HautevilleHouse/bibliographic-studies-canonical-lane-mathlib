import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure MetadataExtractionPackage where
  source : String
  extractedTitle : Prop
  extractedAuthors : Prop
  extractedYear : Prop
  extractionValid : Prop

structure MetadataExtractionEvidence (M : MetadataExtractionPackage) where
  extractedTitleClosed : M.extractedTitle
  extractedAuthorsClosed : M.extractedAuthors
  extractedYearClosed : M.extractedYear
  extractionValidClosed : M.extractionValid

def MetadataExtractionClosed (M : MetadataExtractionPackage) : Prop :=
  M.extractedTitle ∧ M.extractedAuthors ∧ M.extractedYear ∧ M.extractionValid

theorem metadata_extraction_closed_from_evidence (M : MetadataExtractionPackage)
    (E : MetadataExtractionEvidence M) : MetadataExtractionClosed M := by
  exact And.intro E.extractedTitleClosed (And.intro E.extractedAuthorsClosed
    (And.intro E.extractedYearClosed E.extractionValidClosed))

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse