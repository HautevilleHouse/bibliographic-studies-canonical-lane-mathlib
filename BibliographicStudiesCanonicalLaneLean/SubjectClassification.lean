import BibliographicStudiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure SubjectClassificationPackage where
  subjects : List String
  schemeCode : String
  isClassified : Prop

structure SubjectClassificationEvidence (S : SubjectClassificationPackage) where
  subjectsNonempty : S.subjects ≠ []
  schemeValid : S.schemeCode ∈ {"DDC", "LCC", "UDC", "MSC"}

def SubjectClassificationClosed (S : SubjectClassificationPackage) : Prop :=
  S.subjects ≠ [] ∧ S.schemeCode ∈ {"DDC", "LCC", "UDC", "MSC"}

theorem subject_classification_closed_from_evidence (S : SubjectClassificationPackage)
    (E : SubjectClassificationEvidence S) : SubjectClassificationClosed S := by
  exact And.intro E.subjectsNonempty E.schemeValid

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse