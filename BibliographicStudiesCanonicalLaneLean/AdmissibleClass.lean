import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure BibliographicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BibliographicAdmittedObject where
  space : BibliographicSpace
  citationComplete : Prop
  coverageVerified : Prop
  conclusion : citationComplete ∧ coverageVerified

structure BibliographicEndgameState where
  object : BibliographicAdmittedObject

def BibliographicWitnessClosed (O : BibliographicAdmittedObject) : Prop :=
  O.conclusion

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse