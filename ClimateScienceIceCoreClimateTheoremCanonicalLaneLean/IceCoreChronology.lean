import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure IceCoreChronologyPackage where
  depthAgeModel : Type
  layerCountingMethod : Type
  volcanicMarkerHorizon : Type
  orbitalTiePoint : Type
  annualLayerResolved : Prop
  depthAgeModelConstructed : Prop
  ageUncertaintyQuantified : Prop
  synchronizationValidated : Prop

structure IceCoreChronologyEvidence (C : IceCoreChronologyPackage) where
  annualLayerResolvedClosed : C.annualLayerResolved
  depthAgeModelConstructedClosed : C.depthAgeModelConstructed
  ageUncertaintyQuantifiedClosed : C.ageUncertaintyQuantified
  synchronizationValidatedClosed : C.synchronizationValidated

def IceCoreChronologyClosed (C : IceCoreChronologyPackage) : Prop :=
  C.annualLayerResolved ∧ C.depthAgeModelConstructed ∧
  C.ageUncertaintyQuantified ∧ C.synchronizationValidated

theorem ice_core_chronology_closed_from_evidence
    (C : IceCoreChronologyPackage) (E : IceCoreChronologyEvidence C) :
    IceCoreChronologyClosed C := by
  exact And.intro E.annualLayerResolvedClosed
    (And.intro E.depthAgeModelConstructedClosed
      (And.intro E.ageUncertaintyQuantifiedClosed E.synchronizationValidatedClosed))

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse
