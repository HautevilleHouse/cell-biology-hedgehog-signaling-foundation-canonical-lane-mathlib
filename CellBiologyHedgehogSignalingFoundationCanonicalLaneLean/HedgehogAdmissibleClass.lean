import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure HedgehogAdmittedObject where
  cellCarrier : Type
  signalingMolecules : Type
  pathwayActivated : Prop
  transcriptionalResponse : Prop
  conclusion : transcriptionalResponse

structure AdmissibleClass where
  object : HedgehogAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HedgehogWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def HedgehogWitnessClosed (O : HedgehogAdmittedObject) : Prop :=
  O.transcriptionalResponse

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse