import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure BibliographicAdmittedObject where
  sourceId : String
  citationCount : Nat
  classificationCode : String
  peerReviewed : Bool
  conclusion : peerReviewed

structure AdmissibleClass where
  object : BibliographicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BibliographicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def BibliographicWitnessClosed (O : BibliographicAdmittedObject) : Prop :=
  O.peerReviewed

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse