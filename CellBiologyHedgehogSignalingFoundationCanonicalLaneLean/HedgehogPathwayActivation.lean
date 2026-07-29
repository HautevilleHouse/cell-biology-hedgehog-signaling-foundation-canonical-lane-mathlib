import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HedgehogSignalFoundation.HedgehogAdmissible
import HautevilleHouse.HedgehogSignalFoundation.HedgehogReceptorBinding

namespace HautevilleHouse
namespace HedgehogSignalFoundation

structure PathwayActivationPackage (R : ReceptorBindingPackage) where
  smoothenedRelease : Prop
  gliActivatorTranslocation : Prop
  targetGeneExpression : Prop
  pathwayEndpoint : Prop

structure PathwayActivationEvidence {R : ReceptorBindingPackage}
    (P : PathwayActivationPackage R) where
  smoothenedReleaseClosed : P.smoothenedRelease
  gliActivatorTranslocationClosed : P.gliActivatorTranslocation
  targetGeneExpressionClosed : P.targetGeneExpression
  pathwayEndpointClosed : P.pathwayEndpoint

def PathwayActivationClosed {R : ReceptorBindingPackage}
    (P : PathwayActivationPackage R) : Prop :=
  P.smoothenedRelease ∧ P.gliActivatorTranslocation ∧
  P.targetGeneExpression ∧ P.pathwayEndpoint

theorem pathway_activation_closed_from_evidence
    {R : ReceptorBindingPackage} (P : PathwayActivationPackage R)
    (E : PathwayActivationEvidence P) : PathwayActivationClosed P := by
  exact And.intro E.smoothenedReleaseClosed
    (And.intro E.gliActivatorTranslocationClosed
      (And.intro E.targetGeneExpressionClosed E.pathwayEndpointClosed))

end HedgehogSignalFoundation
end HautevilleHouse