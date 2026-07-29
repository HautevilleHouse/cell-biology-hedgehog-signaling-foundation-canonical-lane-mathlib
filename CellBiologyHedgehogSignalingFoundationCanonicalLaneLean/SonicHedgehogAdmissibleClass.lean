import CellBiologyHedgehogSignalingFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : HedgehogAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HedgehogWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse
