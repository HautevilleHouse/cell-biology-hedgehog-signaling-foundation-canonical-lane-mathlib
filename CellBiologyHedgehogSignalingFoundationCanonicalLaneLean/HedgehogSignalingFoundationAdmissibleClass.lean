import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure HedgehogSignalingFoundationObject where
  ligandProduction : HedgehogLigandProductionPackage
  patchedReceptor : PatchedReceptorComplexPackage
  smoothenedActivation : SmoothenedActivationPackage
  gliTranscriptionFactor : GliTranscriptionFactorPackage
  cascade : SignalTransductionCascadePackage

def HedgehogSignalingFoundationClosed (O : HedgehogSignalingFoundationObject) : Prop :=
  HedgehogLigandProductionClosed O.ligandProduction ∧
  PatchedReceptorComplexClosed O.patchedReceptor ∧
  SmoothenedActivationClosed O.smoothenedActivation ∧
  GliTranscriptionFactorClosed O.gliTranscriptionFactor ∧
  SignalTransductionCascadeClosed O.cascade

theorem hedgehog_signaling_foundation_closed_from_object
    (O : HedgehogSignalingFoundationObject)
    (hL : HedgehogLigandProductionEvidence O.ligandProduction)
    (hS : SmoothenedActivationEvidence O.smoothenedActivation)
    (hG : GliTranscriptionFactorEvidence O.gliTranscriptionFactor)
    (hC : SignalTransductionCascadeEvidence O.cascade) :
    HedgehogSignalingFoundationClosed O := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))
  · exact hedgehog_ligand_production_closed_from_evidence O.ligandProduction hL
  · exact patched_receptor_complex_closed_from_evidence O.patchedReceptor
  · exact smoothened_activation_closed_from_evidence O.smoothenedActivation hS
  · exact gli_transcription_factor_closed_from_evidence O.gliTranscriptionFactor hG
  · exact signal_transduction_cascade_closed_from_evidence O.cascade hC

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse