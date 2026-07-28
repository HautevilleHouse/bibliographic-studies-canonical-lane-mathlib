import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

inductive SourceType
  | journalArticle
  | book
  | conferencePaper
  | thesis

def SourceType.toString : SourceType → String
  | .journalArticle => "journal article"
  | .book => "book"
  | .conferencePaper => "conference paper"
  | .thesis => "thesis"

structure SourceClassificationPackage where
  object : BibliographicAdmittedObject
  assignedType : SourceType
  classificationJustified : Prop
  typeConsistent : Prop

structure SourceClassificationEvidence (S : SourceClassificationPackage) where
  classificationJustifiedClosed : S.classificationJustified
  typeConsistentClosed : S.typeConsistent

def SourceClassificationClosed (S : SourceClassificationPackage) : Prop :=
  S.classificationJustified ∧ S.typeConsistent

theorem source_classification_closed_from_evidence (S : SourceClassificationPackage)
    (E : SourceClassificationEvidence S) : SourceClassificationClosed S := by
  exact And.intro E.classificationJustifiedClosed E.typeConsistentClosed

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse