import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure AbruptClimateChangeMechanismPackage where
  triggerType : Type u
  tippingPoint : Prop
  thresholdCrossed : Prop
  positiveFeedbackLoop : Prop
  irreversibleShift : Prop

structure AbruptClimateChangeMechanismEvidence (A : AbruptClimateChangeMechanismPackage) where
  tippingPointClosed : A.tippingPoint
  thresholdCrossedClosed : A.thresholdCrossed
  positiveFeedbackLoopClosed : A.positiveFeedbackLoop
  irreversibleShiftClosed : A.irreversibleShift

def AbruptClimateChangeMechanismClosed (A : AbruptClimateChangeMechanismPackage) : Prop :=
  A.tippingPoint ∧ A.thresholdCrossed ∧ A.positiveFeedbackLoop ∧ A.irreversibleShift

theorem abrupt_climate_change_mechanism_closed_from_evidence
    (A : AbruptClimateChangeMechanismPackage) (E : AbruptClimateChangeMechanismEvidence A) :
    AbruptClimateChangeMechanismClosed A := by
  exact And.intro E.tippingPointClosed
    (And.intro E.thresholdCrossedClosed
      (And.intro E.positiveFeedbackLoopClosed E.irreversibleShiftClosed))

end HautevilleHouse.ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse
