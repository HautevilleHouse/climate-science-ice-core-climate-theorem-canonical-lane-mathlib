import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure IceCoreCore where
  coreName : String
  locationLatitude : ℝ
  locationLongitude : ℝ
  elevationMeters : ℝ
  maxDepthMeters : ℝ
  chronologyModel : String
  iceCoreExtracted : Prop
  chronologyEstablished : Prop
  layerCountingPerformed : Prop

def IceCoreStratigraphyPackage where
  cores : List IceCoreCore
  multiproxyAlignment : String
  ageDepthModel : String
  coreCoverageAdmissible : Prop
  alignmentConsistent : Prop
  ageDepthModelValidated : Prop

def IceCoreStratigraphyClosed (P : IceCoreStratigraphyPackage) : Prop :=
  P.coreCoverageAdmissible ∧ P.alignmentConsistent ∧ P.ageDepthModelValidated

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse
