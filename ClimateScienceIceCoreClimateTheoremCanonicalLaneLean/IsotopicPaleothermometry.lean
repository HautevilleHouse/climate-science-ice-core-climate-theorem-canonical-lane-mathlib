import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  temperatureProxy : String  -- e.g., "δ18O" or "δD"
  coreSite : String
  calibrationCurve : String
  temporalCoverage : String
  resolution : String
  proxyMeasurement : Prop
  temperatureReconstruction : Prop
  calibrationValidated : Prop

def IsotopicPaleothermometryClosed (P : IsotopicPaleothermometryPackage) : Prop :=
  P.proxyMeasurement ∧ P.temperatureReconstruction ∧ P.calibrationValidated

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse
