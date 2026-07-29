import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure HedgehogSignalingPathwayPackage where
  ligand : Type u
  patchedReceptor : Type v
  smoothened : Type w
  gliomaAssociatedOncogene : Type x
  ligandPresent : Prop
  patchedInhibitsSmoothened : Prop
  smoothenedActivatesGli : Prop
  gliTranslocatesToNucleus : Prop

def HedgehogSignalingPathwayClosed (P : HedgehogSignalingPathwayPackage) : Prop :=
  P.ligandPresent ∧ P.patchedInhibitsSmoothened ∧ P.smoothenedActivatesGli ∧ P.gliTranslocatesToNucleus

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse