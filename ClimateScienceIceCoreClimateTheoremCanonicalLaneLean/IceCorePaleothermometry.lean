import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure IceCorePaleothermometryPackage where
  deltaODepthProfile : Prop
  temperatureReconstruction : Prop
  boreholeCalibration : Prop
  seasonalCycleResolution : Prop

structure IceCorePaleothermometryEvidence (P : IceCorePaleothermometryPackage) where
  deltaODepthProfileClosed : P.deltaODepthProfile
  temperatureReconstructionClosed : P.temperatureReconstruction
  boreholeCalibrationClosed : P.boreholeCalibration
  seasonalCycleResolutionClosed : P.seasonalCycleResolution

def IceCorePaleothermometryClosed (P : IceCorePaleothermometryPackage) : Prop :=
  P.deltaODepthProfile ∧ P.temperatureReconstruction ∧ P.boreholeCalibration ∧ P.seasonalCycleResolution

theorem ice_core_paleothermometry_closed_from_evidence (P : IceCorePaleothermometryPackage)
    (E : IceCorePaleothermometryEvidence P) : IceCorePaleothermometryClosed P := by
  exact And.intro E.deltaODepthProfileClosed
    (And.intro E.temperatureReconstructionClosed
      (And.intro E.boreholeCalibrationClosed E.seasonalCycleResolutionClosed))

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse