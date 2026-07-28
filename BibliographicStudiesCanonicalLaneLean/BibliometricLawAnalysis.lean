import BibliographicStudiesCanonicalLaneLean.BibliographicAdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure BibliometricLawPackage where
  lotkaLaw : Prop
  bradfordLaw : Prop
  zipfLaw : Prop
  empiricalValidation : Prop

structure BibliometricLawEvidence (L : BibliometricLawPackage) where
  lotkaLawClosed : L.lotkaLaw
  bradfordLawClosed : L.bradfordLaw
  zipfLawClosed : L.zipfLaw
  empiricalValidationClosed : L.empiricalValidation

def BibliometricLawClosed (L : BibliometricLawPackage) : Prop :=
  L.lotkaLaw ∧ L.bradfordLaw ∧ L.zipfLaw ∧ L.empiricalValidation

theorem bibliometric_law_closed_from_evidence (L : BibliometricLawPackage)
    (E : BibliometricLawEvidence L) : BibliometricLawClosed L := by
  exact And.intro E.lotkaLawClosed (And.intro E.bradfordLawClosed
    (And.intro E.zipfLawClosed E.empiricalValidationClosed))

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse