import BibliographicStudiesCanonicalLaneLean.BibliographicAdmissibleClass

namespace HautevilleHouse
namespace BibliographicStudiesCanonicalLaneLean

structure CitationNetworkPackage where
  nodes : Type
  edges : nodes → nodes → Prop
  directed : Bool
  weighted : Bool
  degreeDistribution : Prop
  clusteringCoefficient : Prop

structure CitationNetworkEvidence (C : CitationNetworkPackage) where
  degreeDistributionClosed : C.degreeDistribution
  clusteringCoefficientClosed : C.clusteringCoefficient

def CitationNetworkClosed (C : CitationNetworkPackage) : Prop :=
  C.degreeDistribution ∧ C.clusteringCoefficient

theorem citation_network_closed_from_evidence (C : CitationNetworkPackage)
    (E : CitationNetworkEvidence C) : CitationNetworkClosed C := by
  exact And.intro E.degreeDistributionClosed E.clusteringCoefficientClosed

end BibliographicStudiesCanonicalLaneLean
end HautevilleHouse