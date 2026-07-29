import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyHedgehogSignalingFoundationCanonicalLaneLean.HedgehogSignalingPathway

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure SignalTransductionComplexPackage where
  pathway : HedgehogSignalingPathwayPackage
  coReceptors : Type u
  intracellularSignalingMolecules : Type v
  complexFormation : Prop
  signalAmplification : Prop
  complexFormationClosed : complexFormation
  signalAmplificationClosed : signalAmplification

def SignalTransductionComplexClosed (C : SignalTransductionComplexPackage) : Prop :=
  C.complexFormation ∧ C.signalAmplification

theorem signal_transduction_complex_closed_from_evidence (C : SignalTransductionComplexPackage) : SignalTransductionComplexClosed C := by
  exact And.intro C.complexFormationClosed C.signalAmplificationClosed

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse