import BibliographicStudiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure AuthorityControlPackage where
  headings : List String
  authorityFile : String
  isControlled : Prop

structure AuthorityControlEvidence (A : AuthorityControlPackage) where
  headingsNonempty : A.headings ≠ []
  authorityFileKnown : A.authorityFile ≠ ""

def AuthorityControlClosed (A : AuthorityControlPackage) : Prop :=
  A.headings ≠ [] ∧ A.authorityFile ≠ ""

theorem authority_control_closed_from_evidence (A : AuthorityControlPackage)
    (E : AuthorityControlEvidence A) : AuthorityControlClosed A := by
  exact And.intro E.headingsNonempty E.authorityFileKnown

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse