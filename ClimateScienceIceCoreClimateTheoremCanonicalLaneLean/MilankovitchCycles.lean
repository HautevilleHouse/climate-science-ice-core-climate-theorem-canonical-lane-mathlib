import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure MilankovitchCycleParameter where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ
  frequency : ℝ

def MilankovitchCycleSet : List MilankovitchCycleParameter :=
  [{ eccentricity := 0.027, obliquity := 22.1, precession := 0.0, frequency := 0.0001 }]

structure MilankovitchForcingPackage where
  orbitalParameters : List MilankovitchCycleParameter
  insolationCurve : String
  spectralPower : String
  orbitalConfigAdmissible : Prop
  insolationDerived : Prop
  spectralPeakMatched : Prop

def MilankovitchForcingClosed (P : MilankovitchForcingPackage) : Prop :=
  P.orbitalConfigAdmissible ∧ P.insolationDerived ∧ P.spectralPeakMatched

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse
