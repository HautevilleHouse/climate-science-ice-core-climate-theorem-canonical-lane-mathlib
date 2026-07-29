import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceIceCoreClimateTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse
