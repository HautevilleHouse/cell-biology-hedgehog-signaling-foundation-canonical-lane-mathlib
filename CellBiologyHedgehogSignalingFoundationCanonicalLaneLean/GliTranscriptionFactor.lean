import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure GliTranscriptionFactorPackage where
  gliProteinExpression : Prop
  gliNuclearLocalization : Prop
  targetGeneActivation : Prop
  repressionRelease : Prop

structure GliTranscriptionFactorEvidence (G : GliTranscriptionFactorPackage) where
  gliProteinExpressionClosed : G.gliProteinExpression
  gliNuclearLocalizationClosed : G.gliNuclearLocalization
  targetGeneActivationClosed : G.targetGeneActivation
  repressionReleaseClosed : G.repressionRelease

def GliTranscriptionFactorClosed (G : GliTranscriptionFactorPackage) : Prop :=
  G.gliProteinExpression ∧ G.gliNuclearLocalization ∧ G.targetGeneActivation ∧ G.repressionRelease

theorem gli_transcription_factor_closed_from_evidence
    (G : GliTranscriptionFactorPackage) (E : GliTranscriptionFactorEvidence G) :
    GliTranscriptionFactorClosed G := by
  exact And.intro E.gliProteinExpressionClosed
    (And.intro E.gliNuclearLocalizationClosed
      (And.intro E.targetGeneActivationClosed E.repressionReleaseClosed))

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse