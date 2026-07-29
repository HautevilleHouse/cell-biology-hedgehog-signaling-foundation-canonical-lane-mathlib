import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure GliTranscriptionalProgram where
  gliActivator : Type u
  gliRepressor : Type v
  targetGenes : Type w
  transcriptionalActivation : Prop
  transcriptionalRepression : Prop
  cellFateDetermination : Prop

structure GliTranscriptionalProgramEvidence (G : GliTranscriptionalProgram) where
  gliActivatorClosed : G.gliActivator
  gliRepressorClosed : G.gliRepressor
  targetGenesClosed : G.targetGenes
  transcriptionalActivationClosed : G.transcriptionalActivation
  transcriptionalRepressionClosed : G.transcriptionalRepression
  cellFateDeterminationClosed : G.cellFateDetermination

def GliTranscriptionalProgramClosed (G : GliTranscriptionalProgram) : Prop :=
  G.transcriptionalActivation ∧ G.transcriptionalRepression ∧ G.cellFateDetermination

theorem gli_transcriptional_program_closed_from_evidence (G : GliTranscriptionalProgram) (E : GliTranscriptionalProgramEvidence G) :
    GliTranscriptionalProgramClosed G := by
  exact And.intro E.transcriptionalActivationClosed (And.intro E.transcriptionalRepressionClosed E.cellFateDeterminationClosed)

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse