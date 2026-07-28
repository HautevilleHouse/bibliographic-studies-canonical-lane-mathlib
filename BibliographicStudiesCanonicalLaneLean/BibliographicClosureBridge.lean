import BibliographicStudiesCanonicalLaneLean.BibliographicAdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

def bridgeClosed (A : BibliographicAdmittedObject) : Prop :=
  BibliographicWitnessClosed A

theorem bridge_from_admissible_class (A : BibliographicAdmittedObject) :
    bridgeClosed A := by
  exact A.conclusion

def gateClosed (A : BibliographicAdmittedObject) : Prop :=
  A.couplingSymmetry ∨ A.coCitationSymmetry

theorem gate_from_admissible_class (A : BibliographicAdmittedObject) :
    gateClosed A := by
  rcases A with ⟨_, h1, h2, _⟩
  exact Or.inl h1

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse