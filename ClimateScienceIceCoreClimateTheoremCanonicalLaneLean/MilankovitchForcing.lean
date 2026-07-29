import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure MilankovitchForcingPackage where
  orbitalParameters : Prop
  insolationCurve : Prop
  precessionEffect : Prop
  obliquityEffect : Prop
  eccentricityEffect : Prop

structure MilankovitchForcingEvidence (M : MilankovitchForcingPackage) where
  orbitalParametersClosed : M.orbitalParameters
  insolationCurveClosed : M.insolationCurve
  precessionEffectClosed : M.precessionEffect
  obliquityEffectClosed : M.obliquityEffect
  eccentricityEffectClosed : M.eccentricityEffect

def MilankovitchForcingClosed (M : MilankovitchForcingPackage) : Prop :=
  M.orbitalParameters ∧ M.insolationCurve ∧ M.precessionEffect ∧ M.obliquityEffect ∧ M.eccentricityEffect

theorem milankovitch_forcing_closed_from_evidence (M : MilankovitchForcingPackage)
    (E : MilankovitchForcingEvidence M) : MilankovitchForcingClosed M := by
  exact And.intro E.orbitalParametersClosed
    (And.intro E.insolationCurveClosed
      (And.intro E.precessionEffectClosed
        (And.intro E.obliquityEffectClosed E.eccentricityEffectClosed)))

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse