import BibliographicStudiesCanonicalLaneLean.BibliographicAdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure ImpactMetricPackage where
  impactFactor : Prop
  hIndex : Prop
  gIndex : Prop
  altmetricScore : Prop

structure ImpactMetricEvidence (M : ImpactMetricPackage) where
  impactFactorClosed : M.impactFactor
  hIndexClosed : M.hIndex
  gIndexClosed : M.gIndex
  altmetricScoreClosed : M.altmetricScore

def ImpactMetricClosed (M : ImpactMetricPackage) : Prop :=
  M.impactFactor ∧ M.hIndex ∧ M.gIndex ∧ M.altmetricScore

theorem impact_metric_closed_from_evidence (M : ImpactMetricPackage)
    (E : ImpactMetricEvidence M) : ImpactMetricClosed M := by
  exact And.intro E.impactFactorClosed (And.intro E.hIndexClosed
    (And.intro E.gIndexClosed E.altmetricScoreClosed))

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse