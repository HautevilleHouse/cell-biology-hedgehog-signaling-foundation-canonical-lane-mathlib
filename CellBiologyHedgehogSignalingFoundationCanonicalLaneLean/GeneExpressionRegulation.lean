import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyHedgehogSignalingFoundationCanonicalLaneLean.HedgehogSignalingPathway

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure GeneExpressionRegulationPackage where
  pathway : HedgehogSignalingPathwayPackage
  targetGenes : Type u
  gliBindingToDna : Prop
  transcriptionalActivation : Prop
  targetGeneExpression : Prop
  gliBindingToDnaClosed : gliBindingToDna
  transcriptionalActivationClosed : transcriptionalActivation
  targetGeneExpressionClosed : targetGeneExpression

def GeneExpressionRegulationClosed (G : GeneExpressionRegulationPackage) : Prop :=
  G.gliBindingToDna ∧ G.transcriptionalActivation ∧ G.targetGeneExpression

theorem gene_expression_regulation_closed_from_evidence (G : GeneExpressionRegulationPackage) : GeneExpressionRegulationClosed G := by
  exact And.intro G.gliBindingToDnaClosed (And.intro G.transcriptionalActivationClosed G.targetGeneExpressionClosed)

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse