import HedgehogSignalingFoundationCanonicalLaneLean.HedgehogTranscriptionalProgram

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure HedgehogDevelopmentalPackage {R : HedgehogReceptorPackage} {I : HedgehogIntracellularPackage R} {T : HedgehogTranscriptionalPackage R I} where
  embryonicPatterning : Prop
  limbBudPolarization : Prop
  neuralTubeDifferentiation : Prop
  digitIdentitySpecification : Prop

structure HedgehogDevelopmentalEvidence {R : HedgehogReceptorPackage} {I : HedgehogIntracellularPackage R} {T : HedgehogTranscriptionalPackage R I} (D : HedgehogDevelopmentalPackage R I T) where
  embryonicPatterningClosed : D.embryonicPatterning
  limbBudPolarizationClosed : D.limbBudPolarization
  neuralTubeDifferentiationClosed : D.neuralTubeDifferentiation
  digitIdentitySpecificationClosed : D.digitIdentitySpecification

def HedgehogDevelopmentalClosed {R : HedgehogReceptorPackage} {I : HedgehogIntracellularPackage R} {T : HedgehogTranscriptionalPackage R I} (D : HedgehogDevelopmentalPackage R I T) : Prop :=
  D.embryonicPatterning ∧ D.limbBudPolarization ∧ D.neuralTubeDifferentiation ∧ D.digitIdentitySpecification

theorem hedgehog_developmental_closed_from_evidence {R : HedgehogReceptorPackage} {I : HedgehogIntracellularPackage R} {T : HedgehogTranscriptionalPackage R I} (D : HedgehogDevelopmentalPackage R I T) (E : HedgehogDevelopmentalEvidence D) : HedgehogDevelopmentalClosed D := by
  exact And.intro E.embryonicPatterningClosed (And.intro E.limbBudPolarizationClosed (And.intro E.neuralTubeDifferentiationClosed E.digitIdentitySpecificationClosed))

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse