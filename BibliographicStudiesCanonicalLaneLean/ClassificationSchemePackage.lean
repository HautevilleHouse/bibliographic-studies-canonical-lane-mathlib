import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure ClassificationSchemePackage where
  code : String
  description : String
  parentCode : Option String
  level : Nat
  valid : Prop

structure ClassificationSchemeEvidence (C : ClassificationSchemePackage) where
  codeValid : C.code ≠ ""
  descriptionNonempty : C.description ≠ ""
  levelPositive : C.level ≥ 0
  validityProof : C.valid

def ClassificationSchemeClosed (C : ClassificationSchemePackage) : Prop :=
  C.code ≠ "" ∧ C.description ≠ "" ∧ C.level ≥ 0 ∧ C.valid

theorem classification_scheme_closed_from_evidence (C : ClassificationSchemePackage) (E : ClassificationSchemeEvidence C) :
    ClassificationSchemeClosed C := by
  exact And.intro E.codeValid (And.intro E.descriptionNonempty (And.intro E.levelPositive E.validityProof))

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse