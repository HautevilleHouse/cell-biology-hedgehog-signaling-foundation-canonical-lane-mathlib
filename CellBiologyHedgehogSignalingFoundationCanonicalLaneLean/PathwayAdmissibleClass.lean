import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HedgehogAdmittedObject where
  pathway : PathwayComponents
  gliNetwork : GliRegulatoryNetwork
  cascade : CascadeModule
  feedback : HomeostaticControl
  patterning : TissuePatterning
  signalIntegrated : Prop
  conclusion : signalIntegrated

structure HedgehogEndgameState where
  object : HedgehogAdmittedObject

def HedgehogWitnessClosed (O : HedgehogAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse