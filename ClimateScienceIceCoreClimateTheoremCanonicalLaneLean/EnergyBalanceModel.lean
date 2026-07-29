import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure EnergyBalanceModelPackage where
  radiativeForcing : Prop
  albedoFeedback : Prop
  iceAlbedoParameterization : Prop
  equilibriumSolution : Prop
  stabilityAnalysis : Prop

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  radiativeForcingClosed : E.radiativeForcing
  albedoFeedbackClosed : E.albedoFeedback
  iceAlbedoParameterizationClosed : E.iceAlbedoParameterization
  equilibriumSolutionClosed : E.equilibriumSolution
  stabilityAnalysisClosed : E.stabilityAnalysis

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.radiativeForcing ∧ E.albedoFeedback ∧ E.iceAlbedoParameterization ∧ E.equilibriumSolution ∧ E.stabilityAnalysis

theorem energy_balance_model_closed_from_evidence (E : EnergyBalanceModelPackage)
    (Ev : EnergyBalanceModelEvidence E) : EnergyBalanceModelClosed E := by
  exact And.intro Ev.radiativeForcingClosed
    (And.intro Ev.albedoFeedbackClosed
      (And.intro Ev.iceAlbedoParameterizationClosed
        (And.intro Ev.equilibriumSolutionClosed Ev.stabilityAnalysisClosed)))

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse