import HedgehogSignalingFoundationCanonicalLaneLean.HedgehogTranscriptionalProgram

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure HedgehogPathologicalPackage {R : HedgehogReceptorPackage} {I : HedgehogIntracellularPackage R} {T : HedgehogTranscriptionalPackage R I} where
  basalCellCarcinoma : Prop
  medulloblastoma : Prop
  congenitalMalformations : Prop
  aberrantActivationInCancer : Prop

structure HedgehogPathologicalEvidence {R : HedgehogReceptorPackage} {I : HedgehogIntracellularPackage R} {T : HedgehogTranscriptionalPackage R I} (P : HedgehogPathologicalPackage R I T) where
  basalCellCarcinomaClosed : P.basalCellCarcinoma
  medulloblastomaClosed : P.medulloblastoma
  congenitalMalformationsClosed : P.congenitalMalformations
  aberrantActivationInCancerClosed : P.aberrantActivationInCancer

def HedgehogPathologicalClosed {R : HedgehogReceptorPackage} {I : HedgehogIntracellularPackage R} {T : HedgehogTranscriptionalPackage R I} (P : HedgehogPathologicalPackage R I T) : Prop :=
  P.basalCellCarcinoma ∧ P.medulloblastoma ∧ P.congenitalMalformations ∧ P.aberrantActivationInCancer

theorem hedgehog_pathological_closed_from_evidence {R : HedgehogReceptorPackage} {I : HedgehogIntracellularPackage R} {T : HedgehogTranscriptionalPackage R I} (P : HedgehogPathologicalPackage R I T) (E : HedgehogPathologicalEvidence P) : HedgehogPathologicalClosed P := by
  exact And.intro E.basalCellCarcinomaClosed (And.intro E.medulloblastomaClosed (And.intro E.congenitalMalformationsClosed E.aberrantActivationInCancerClosed))

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse