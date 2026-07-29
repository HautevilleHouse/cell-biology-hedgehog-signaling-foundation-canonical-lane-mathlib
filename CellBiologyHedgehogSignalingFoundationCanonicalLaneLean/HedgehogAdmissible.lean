import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HedgehogSignalFoundation

structure HedgehogAdmittedObject where
  cellPresent : Prop
  shhLigandPresent : Prop
  patchedReceptorBound : Prop
  smoothenedActivated : Prop
  gliTranscriptionOn : Prop
  conclusion : gliTranscriptionOn

structure HedgehogAdmissibleClass where
  object : HedgehogAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def hedgehogAdmittedClosure (A : HedgehogAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HedgehogSignalFoundation
end HautevilleHouse