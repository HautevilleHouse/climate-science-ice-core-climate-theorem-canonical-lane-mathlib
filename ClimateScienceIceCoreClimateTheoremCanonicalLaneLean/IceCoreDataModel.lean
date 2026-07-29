import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure IceCoreSample where
  depth : ℝ
  age : ℝ
  delta18O : ℝ
  deltaD : ℝ

structure IceCoreData where
  samples : List IceCoreSample
  ageModel : IceCoreSample → ℝ
  resolution : ℝ
  dataComplete : Prop
  dataCompleteTerm : dataComplete

structure IceCoreAdmittedObject where
  data : IceCoreData
  targetClosure : Prop
  conclusion : targetClosure

def IceCoreWitnessClosed (O : IceCoreAdmittedObject) : Prop :=
  O.targetClosure

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse