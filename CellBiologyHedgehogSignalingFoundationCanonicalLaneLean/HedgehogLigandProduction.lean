import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure HedgehogLigandProductionPackage where
  shhGeneExpression : Prop
  signalPeptideCleavage : Prop
  cholesterolModification : Prop
  palmitoylation : Prop
  matureLigandRelease : Prop

structure HedgehogLigandProductionEvidence (P : HedgehogLigandProductionPackage) where
  shhGeneExpressionClosed : P.shhGeneExpression
  signalPeptideCleavageClosed : P.signalPeptideCleavage
  cholesterolModificationClosed : P.cholesterolModification
  palmitoylationClosed : P.palmitoylation
  matureLigandReleaseClosed : P.matureLigandRelease

def HedgehogLigandProductionClosed (P : HedgehogLigandProductionPackage) : Prop :=
  P.shhGeneExpression ∧ P.signalPeptideCleavage ∧ P.cholesterolModification ∧
  P.palmitoylation ∧ P.matureLigandRelease

theorem hedgehog_ligand_production_closed_from_evidence
    (P : HedgehogLigandProductionPackage) (E : HedgehogLigandProductionEvidence P) :
    HedgehogLigandProductionClosed P := by
  exact And.intro E.shhGeneExpressionClosed
    (And.intro E.signalPeptideCleavageClosed
      (And.intro E.cholesterolModificationClosed
        (And.intro E.palmitoylationClosed E.matureLigandReleaseClosed)))

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse