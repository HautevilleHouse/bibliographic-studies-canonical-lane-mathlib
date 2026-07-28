import HautevilleHouse.BibliographicStudiesCanonicalLaneLean.BibliographicGateLemmas

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

def ConstrainedBibliographicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bibliographic_endgame (A : AdmissibleClass) :
    ConstrainedBibliographicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse