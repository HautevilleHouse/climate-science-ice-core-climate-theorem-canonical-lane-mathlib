import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure PaleoclimateEnergyBalancePackage where
  solarConstant : ℝ
  albedo : ℝ
  greenhouseGasForcing : ℝ
  planetaryHeatCapacity : ℝ
  radiationBalanceEquation : String
  energyBalanceClosed : Prop
  climateSensitivityComputed : Prop
   radiation balance term
  energyBalanceClosedTerm : energyBalanceClosed
  climateSensitivityComputedTerm : climateSensitivityComputed

def PaleoclimateEnergyBalanceClosed (P : PaleoclimateEnergyBalancePackage) : Prop :=
  P.energyBalanceClosed ∧ P.climateSensitivityComputed

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse
