import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure HedgehogLigand where
  ligandType : Type u
  functionalDomain : Prop
  receptorBindingAffinity : Prop
  signalingCompetence : Prop

structure PtchReceptor where
  receptorType : Type u
  ligandBindingDomain : Prop
  inhibitoryActivity : Prop
  smoothenedRepression : Prop

structure SmoTransducer where
  transducerType : Type u
  ptchInhibitionRelease : Prop
  gliActivationPathway : Prop

structure PathwayComponents where
  ligand : HedgehogLigand
  receptor : PtchReceptor
  transducer : SmoTransducer
  signalingCompetenceEvidence : ligand.signalingCompetence
  receptorFunctional : receptor.ligandBindingDomain ∧ receptor.inhibitoryActivity ∧ receptor.smoothenedRepression
  transducerRelease : transducer.ptchInhibitionRelease

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse