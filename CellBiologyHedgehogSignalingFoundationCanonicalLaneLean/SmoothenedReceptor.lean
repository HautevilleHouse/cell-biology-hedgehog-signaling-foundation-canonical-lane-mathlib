import CellBiologyHedgehogSignalingFoundationCanonicalLaneLean.CiliumSignalosome

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure SmoothenedReceptorPackage {P : CiliumSignalosomePackage} (S : PatchedBindingPackage P) where
  smoothenedActivation : Prop
  receptorInternalization : Prop
  signalRelayToCytoplasm : Prop

structure SmoothenedReceptorEvidence {P : CiliumSignalosomePackage} {S : PatchedBindingPackage P} (R : SmoothenedReceptorPackage S) where
  smoothenedActivationClosed : R.smoothenedActivation
  receptorInternalizationClosed : R.receptorInternalization
  signalRelayToCytoplasmClosed : R.signalRelayToCytoplasm

def SmoothenedReceptorClosed {P : CiliumSignalosomePackage} {S : PatchedBindingPackage P} (R : SmoothenedReceptorPackage S) : Prop :=
  R.smoothenedActivation ∧ R.receptorInternalization ∧ R.signalRelayToCytoplasm

theorem smoothened_receptor_closed_from_evidence {P : CiliumSignalosomePackage} {S : PatchedBindingPackage P} (R : SmoothenedReceptorPackage S) (E : SmoothenedReceptorEvidence R) : SmoothenedReceptorClosed R := by
  exact And.intro E.smoothenedActivationClosed (And.intro E.receptorInternalizationClosed E.signalRelayToCytoplasmClosed)

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse
