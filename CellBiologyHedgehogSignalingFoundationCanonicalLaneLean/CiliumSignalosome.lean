import CellBiologyHedgehogSignalingFoundationCanonicalLaneLean.HedgehogLigandUnbound

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure CiliumSignalosomePackage {H : HedgehogLigandPackage} (U : HedgehogLigandUnboundPackage H) where
  ptch1Localization : Prop
  iFTTransportActive : Prop
  signalosomeAssembly : Prop

structure CiliumSignalosomeEvidence {H : HedgehogLigandPackage} {U : HedgehogLigandUnboundPackage H} (C : CiliumSignalosomePackage U) where
  ptch1LocalizationClosed : C.ptch1Localization
  iFTTransportActiveClosed : C.iFTTransportActive
  signalosomeAssemblyClosed : C.signalosomeAssembly

def CiliumSignalosomeClosed {H : HedgehogLigandPackage} {U : HedgehogLigandUnboundPackage H} (C : CiliumSignalosomePackage U) : Prop :=
  C.ptch1Localization ∧ C.iFTTransportActive ∧ C.signalosomeAssembly

theorem cilium_signalosome_closed_from_evidence {H : HedgehogLigandPackage} {U : HedgehogLigandUnboundPackage H} (C : CiliumSignalosomePackage U) (E : CiliumSignalosomeEvidence C) : CiliumSignalosomeClosed C := by
  exact And.intro E.ptch1LocalizationClosed (And.intro E.iFTTransportActiveClosed E.signalosomeAssemblyClosed)

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse
