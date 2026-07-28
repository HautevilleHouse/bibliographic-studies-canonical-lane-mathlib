import canonicalLaneMathlib.AdmissibleClass
import BibliographicStudiesCanonicalLaneLean.BibliographicObjects

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure BibliographicProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def bibliographicProofObligation : BibliographicProofObligation := {
  sourceKey := "bibliographic-studies-canonical-lane",
  theoremObject := "citation closure property",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse