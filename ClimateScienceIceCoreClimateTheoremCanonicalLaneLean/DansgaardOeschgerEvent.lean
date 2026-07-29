import HautevilleHouse.ClimateScienceIceCoreClimateTheoremCanonicalLaneLean.IceCorePaleothermometry

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure DansgaardOeschgerEventModel {G : IceCoreStratigraphyPackage}
    (P : IceCorePaleothermometryPackage G) where
  abruptWarmingEvents : Prop
  temperatureAnomalyProfile : Prop
  eventTiming : Prop
  bipolarSeesawLink : Prop

def DansgaardOeschgerEventClosed {G : IceCoreStratigraphyPackage}
    {P : IceCorePaleothermometryPackage G} (D : DansgaardOeschgerEventModel P) : Prop :=
  D.abruptWarmingEvents ∧ D.temperatureAnomalyProfile ∧
  D.eventTiming ∧ D.bipolarSeesawLink

theorem dansgaard_oeschger_event_closed {G : IceCoreStratigraphyPackage}
    {P : IceCorePaleothermometryPackage G} (D : DansgaardOeschgerEventModel P)
    (hAbrupt : D.abruptWarmingEvents) (hProfile : D.temperatureAnomalyProfile)
    (hTiming : D.eventTiming) (hSeesaw : D.bipolarSeesawLink) :
    DansgaardOeschgerEventClosed D := by
  exact And.intro hAbrupt (And.intro hProfile (And.intro hTiming hSeesaw))

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse