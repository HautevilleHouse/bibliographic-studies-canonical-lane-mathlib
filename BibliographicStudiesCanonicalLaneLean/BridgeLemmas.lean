import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BibliographicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse