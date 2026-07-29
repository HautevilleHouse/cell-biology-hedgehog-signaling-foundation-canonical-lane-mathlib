import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure SmoothenedActivationPackage where
  smoPhosphorylation : Prop
  smoConformationalChange : Prop
  smoTranslocationToCilium : Prop
  downstreamSignalingInitiation : Prop

structure SmoothenedActivationEvidence (S : SmoothenedActivationPackage) where
  smoPhosphorylationClosed : S.smoPhosphorylation
  smoConformationalChangeClosed : S.smoConformationalChange
  smoTranslocationToCiliumClosed : S.smoTranslocationToCilium
  downstreamSignalingInitiationClosed : S.downstreamSignalingInitiation

def SmoothenedActivationClosed (S : SmoothenedActivationPackage) : Prop :=
  S.smoPhosphorylation ∧ S.smoConformationalChange ∧ S.smoTranslocationToCilium ∧ S.downstreamSignalingInitiation

theorem smoothened_activation_closed_from_evidence
    (S : SmoothenedActivationPackage) (E : SmoothenedActivationEvidence S) :
    SmoothenedActivationClosed S := by
  exact And.intro E.smoPhosphorylationClosed
    (And.intro E.smoConformationalChangeClosed
      (And.intro E.smoTranslocationToCiliumClosed E.downstreamSignalingInitiationClosed))

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse