import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HedgehogSignalFoundation.HedgehogAdmissible

namespace HautevilleHouse
namespace HedgehogSignalFoundation

structure ReceptorBindingPackage where
  ligandConcentration : Prop
  receptorAffinity : Prop
  bindingKinetics : Prop
  signalInitiation : Prop

structure ReceptorBindingEvidence (R : ReceptorBindingPackage) where
  ligandConcentrationClosed : R.ligandConcentration
  receptorAffinityClosed : R.receptorAffinity
  bindingKineticsClosed : R.bindingKinetics
  signalInitiationClosed : R.signalInitiation

def ReceptorBindingClosed (R : ReceptorBindingPackage) : Prop :=
  R.ligandConcentration ∧ R.receptorAffinity ∧
  R.bindingKinetics ∧ R.signalInitiation

theorem receptor_binding_closed_from_evidence
    (R : ReceptorBindingPackage) (E : ReceptorBindingEvidence R) :
    ReceptorBindingClosed R := by
  exact And.intro E.ligandConcentrationClosed
    (And.intro E.receptorAffinityClosed
      (And.intro E.bindingKineticsClosed E.signalInitiationClosed))

end HedgehogSignalFoundation
end HautevilleHouse