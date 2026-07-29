import HedgehogSignalingFoundationCanonicalLaneLean.HedgehogAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure HedgehogReceptorPackage where
  patchedReceptor : Type u
  smoothenedCoReceptor : Type v
  ligandBinding : Prop
  receptorActivation : Prop

structure HedgehogReceptorEvidence (R : HedgehogReceptorPackage) where
  ligandBindingClosed : R.ligandBinding
  receptorActivationClosed : R.receptorActivation

def HedgehogReceptorClosed (R : HedgehogReceptorPackage) : Prop :=
  R.ligandBinding ∧ R.receptorActivation

theorem hedgehog_receptor_closed_from_evidence (R : HedgehogReceptorPackage) (E : HedgehogReceptorEvidence R) : HedgehogReceptorClosed R := by
  exact And.intro E.ligandBindingClosed E.receptorActivationClosed

structure HedgehogIntracellularPackage {R : HedgehogReceptorPackage} where
  gliTranscriptionFactors : Type w
  ciProteolysis : Prop
  kinaseSignaling : Prop
  nuclearTranslocation : Prop

structure HedgehogIntracellularEvidence {R : HedgehogReceptorPackage} (I : HedgehogIntracellularPackage R) where
  ciProteolysisClosed : I.ciProteolysis
  kinaseSignalingClosed : I.kinaseSignaling
  nuclearTranslocationClosed : I.nuclearTranslocation

def HedgehogIntracellularClosed {R : HedgehogReceptorPackage} (I : HedgehogIntracellularPackage R) : Prop :=
  I.ciProteolysis ∧ I.kinaseSignaling ∧ I.nuclearTranslocation

theorem hedgehog_intracellular_closed_from_evidence {R : HedgehogReceptorPackage} (I : HedgehogIntracellularPackage R) (E : HedgehogIntracellularEvidence I) : HedgehogIntracellularClosed I := by
  exact And.intro E.ciProteolysisClosed (And.intro E.kinaseSignalingClosed E.nuclearTranslocationClosed)

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse