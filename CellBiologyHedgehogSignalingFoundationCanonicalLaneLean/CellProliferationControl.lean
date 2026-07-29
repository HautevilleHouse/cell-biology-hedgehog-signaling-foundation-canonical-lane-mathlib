import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyHedgehogSignalingFoundationCanonicalLaneLean.HedgehogSignalingPathway

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure CellProliferationControlPackage where
  pathway : HedgehogSignalingPathwayPackage
  cellCycleRegulators : Type u
  proliferationSignal : Prop
  cellCycleProgression : Prop
  proliferationSignalClosed : proliferationSignal
  cellCycleProgressionClosed : cellCycleProgression

def CellProliferationControlClosed (C : CellProliferationControlPackage) : Prop :=
  C.proliferationSignal ∧ C.cellCycleProgression

theorem cell_proliferation_control_closed_from_evidence (C : CellProliferationControlPackage) : CellProliferationControlClosed C := by
  exact And.intro C.proliferationSignalClosed C.cellCycleProgressionClosed

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse