import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure PaleothermometryPackage where
  isotopeRatioMeasured : Prop
  fractionationModel : Prop
  temperatureCalibrated : Prop
  uncertaintyQuantified : Prop

structure PaleothermometryEvidence (P : PaleothermometryPackage) where
  isotopeRatioClosed : P.isotopeRatioMeasured
  fractionationModelClosed : P.fractionationModel
  temperatureCalibratedClosed : P.temperatureCalibrated
  uncertaintyQuantifiedClosed : P.uncertaintyQuantified

def PaleothermometryClosed (P : PaleothermometryPackage) : Prop :=
  P.isotopeRatioMeasured ∧ P.fractionationModel ∧
  P.temperatureCalibrated ∧ P.uncertaintyQuantified

theorem paleothermometry_closed_from_evidence (P : PaleothermometryPackage) (E : PaleothermometryEvidence P) :
    PaleothermometryClosed P := by
  exact And.intro E.isotopeRatioClosed
    (And.intro E.fractionationModelClosed
      (And.intro E.temperatureCalibratedClosed E.uncertaintyQuantifiedClosed))

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse