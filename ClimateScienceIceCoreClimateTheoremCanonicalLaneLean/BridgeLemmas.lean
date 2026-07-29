import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceIceCoreClimateTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClimateWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse
