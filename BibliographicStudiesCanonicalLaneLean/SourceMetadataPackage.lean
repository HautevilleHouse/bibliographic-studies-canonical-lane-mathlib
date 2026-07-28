import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure SourceMetadataPackage where
  sourceId : String
  title : String
  authors : List String
  year : Nat
  journal : String
  doi : String
  citationCount : Nat
  peerReviewed : Bool
  abstractText : String

structure SourceMetadataEvidence (P : SourceMetadataPackage) where
  titleNotEmpty : P.title ≠ ""
  authorsNonempty : P.authors ≠ []
  yearValid : P.year ≥ 1900 ∧ P.year ≤ 2025
  doiValid : P.doi ≠ ""
  peerReviewStatus : P.peerReviewed ∨ ¬ P.peerReviewed

def SourceMetadataClosed (P : SourceMetadataPackage) : Prop :=
  P.title ≠ "" ∧ P.authors ≠ [] ∧ P.year ≥ 1900 ∧ P.year ≤ 2025 ∧ P.doi ≠ ""

theorem source_metadata_closed_from_evidence (P : SourceMetadataPackage) (E : SourceMetadataEvidence P) :
    SourceMetadataClosed P := by
  exact And.intro E.titleNotEmpty (And.intro E.authorsNonempty (And.intro E.yearValid (And.intro E.doiValid E.peerReviewStatus)))

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse