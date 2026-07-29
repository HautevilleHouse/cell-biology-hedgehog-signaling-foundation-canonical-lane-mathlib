import HedgehogSignalingFoundationCanonicalLaneLean.HedgehogPathwayComponents

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure HedgehogTranscriptionalPackage {R : HedgehogReceptorPackage} {I : HedgehogIntracellularPackage R} where
  targetGeneActivation : Prop
  cellCycleRegulation : Prop
  differentiationProgram : Prop
  canonicalWntCrossTalk : Prop

structure HedgehogTranscriptionalEvidence {R : HedgehogReceptorPackage} {I : HedgehogIntracellularPackage R} (T : HedgehogTranscriptionalPackage R I) where
  targetGeneActivationClosed : T.targetGeneActivation
  cellCycleRegulationClosed : T.cellCycleRegulation
  differentiationProgramClosed : T.differentiationProgram
  canonicalWntCrossTalkClosed : T.canonicalWntCrossTalk

def HedgehogTranscriptionalClosed {R : HedgehogReceptorPackage} {I : HedgehogIntracellularPackage R} (T : HedgehogTranscriptionalPackage R I) : Prop :=
  T.targetGeneActivation ∧ T.cellCycleRegulation ∧ T.differentiationProgram ∧ T.canonicalWntCrossTalk

theorem hedgehog_transcriptional_closed_from_evidence {R : HedgehogReceptorPackage} {I : HedgehogIntracellularPackage R} (T : HedgehogTranscriptionalPackage R I) (E : HedgehogTranscriptionalEvidence T) : HedgehogTranscriptionalClosed T := by
  exact And.intro E.targetGeneActivationClosed (And.intro E.cellCycleRegulationClosed (And.intro E.differentiationProgramClosed E.canonicalWntCrossTalkClosed))

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse