import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure ClimateProxy where
  proxyType : String
  archiveMaterial : String
  measurementTechnique : String
  calibrationUncertainty : ℝ
  proxyInterpretation : String
  proxyMeasured : Prop
  calibrationApplied : Prop
  uncertaintyQuantified : Prop

 ClimateProxyTerm struct using record syntax
structure ClimateProxyTerm (P : ClimateProxy) where
  proxyMeasuredClosed : P.proxyMeasured
  calibrationAppliedClosed : P.calibrationApplied
  uncertaintyQuantifiedClosed : P.uncertaintyQuantified

def ClimateProxyClosed (P : ClimateProxy) : Prop :=
  P.proxyMeasured ∧ P.calibrationApplied ∧ P.uncertaintyQuantified

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse
