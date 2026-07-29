import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure DansgaardOeschgerEventsPackage where
  abruptWarmingEvents : Prop
  bondCyclePattern : Prop
  interstadialDuration : Prop
  stadialCondition : Prop
  atlanticMeridionalOverturning : Prop

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEventsPackage) where
  abruptWarmingEventsClosed : D.abruptWarmingEvents
  bondCyclePatternClosed : D.bondCyclePattern
  interstadialDurationClosed : D.interstadialDuration
  stadialConditionClosed : D.stadialCondition
  atlanticMeridionalOverturningClosed : D.atlanticMeridionalOverturning

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEventsPackage) : Prop :=
  D.abruptWarmingEvents ∧ D.bondCyclePattern ∧ D.interstadialDuration ∧ D.stadialCondition ∧ D.atlanticMeridionalOverturning

theorem dansgaard_oeschger_events_closed_from_evidence (D : DansgaardOeschgerEventsPackage)
    (E : DansgaardOeschgerEventsEvidence D) : DansgaardOeschgerEventsClosed D := by
  exact And.intro E.abruptWarmingEventsClosed
    (And.intro E.bondCyclePatternClosed
      (And.intro E.interstadialDurationClosed
        (And.intro E.stadialConditionClosed E.atlanticMeridionalOverturningClosed)))

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse