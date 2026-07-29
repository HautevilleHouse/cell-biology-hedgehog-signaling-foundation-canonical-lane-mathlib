import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyHedgehogSignalingFoundationCanonicalLaneLean.HedgehogSignalingPathway

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure DevelopmentalPatterningPackage where
  pathway : HedgehogSignalingPathwayPackage
  morphogenGradient : Prop
  concentrationDependentResponse : Prop
  tissuePatterning : Prop
  morphogenGradientClosed : morphogenGradient
  concentrationDependentResponseClosed : concentrationDependentResponse
  tissuePatterningClosed : tissuePatterning

def DevelopmentalPatterningClosed (D : DevelopmentalPatterningPackage) : Prop :=
  D.morphogenGradient ∧ D.concentrationDependentResponse ∧ D.tissuePatterning

theorem developmental_patterning_closed_from_evidence (D : DevelopmentalPatterningPackage) : DevelopmentalPatterningClosed D := by
  exact And.intro D.morphogenGradientClosed (And.intro D.concentrationDependentResponseClosed D.tissuePatterningClosed)

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse