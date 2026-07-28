import BibliographicStudiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure BibliographicRecordPackage where
  title : String
  author : String
  year : Nat
  publisher : String
  isValid : Prop

structure BibliographicRecordEvidence (B : BibliographicRecordPackage) where
  titleNonempty : B.title ≠ ""
  authorNonempty : B.author ≠ ""
  yearAfterPrinting : B.year ≥ 1450

def BibliographicRecordClosed (B : BibliographicRecordPackage) : Prop :=
  B.title ≠ "" ∧ B.author ≠ "" ∧ B.year ≥ 1450

theorem bibliographic_record_closed_from_evidence (B : BibliographicRecordPackage)
    (E : BibliographicRecordEvidence B) : BibliographicRecordClosed B := by
  exact And.intro E.titleNonempty (And.intro E.authorNonempty E.yearAfterPrinting)

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse