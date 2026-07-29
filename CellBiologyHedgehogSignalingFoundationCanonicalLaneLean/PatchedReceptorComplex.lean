import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure PatchedReceptorComplexPackage where
  ptch1ReceptorExpression : Prop
  ptch1LocalizationAtMembrane : Prop
  smoBinding : Prop
  repressiveComplexFormation : Prop

def PatchedReceptorComplexClosed (P : PatchedReceptorComplexPackage) : Prop :=
  P.ptch1ReceptorExpression ∧ P.ptch1LocalizationAtMembrane ∧ P.smoBinding ∧ P.repressiveComplexFormation

theorem patched_receptor_complex_closed_from_evidence
    (P : PatchedReceptorComplexPackage) : PatchedReceptorComplexClosed P := by
  exact And.intro P.ptch1ReceptorExpression
    (And.intro P.ptch1LocalizationAtMembrane
      (And.intro P.smoBinding P.repressiveComplexFormation))

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse