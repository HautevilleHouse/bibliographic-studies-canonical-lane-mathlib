import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure BibliographicAdmittedObject where
  title : String
  authors : List String
  publicationVenue : String
  year : Nat
  doi : String
  metadataComplete : Prop
  verified : Prop
  conclusion : metadataComplete ∧ verified

def BibliographicWitnessClosed (O : BibliographicAdmittedObject) : Prop :=
  O.metadataComplete ∧ O.verified

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse