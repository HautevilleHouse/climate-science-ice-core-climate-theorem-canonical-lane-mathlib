import HautevilleHouse.ClimateScienceIceCoreClimateTheoremCanonicalLaneLean.IceCoreStratigraphy
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure MilankovitchCycleModel (G : IceCoreStratigraphyPackage) where
  orbitalParameters : Prop
  summerInsolation : G.coreDepth -> ℝ
  precession : ℝ
  obliquity : ℝ
  eccentricity : ℝ
  insolationComputed : Prop

structure MilankovitchCycleEvidence {G : IceCoreStratigraphyPackage}
    (M : MilankovitchCycleModel G) where
  insolationComputedClosed : M.insolationComputed
  orbitalParametersClosed : M.orbitalParameters

def MilankovitchCycleClosed {G : IceCoreStratigraphyPackage}
    (M : MilankovitchCycleModel G) : Prop :=
  M.orbitalParameters ∧ M.insolationComputed

theorem milankovitch_cycle_closed_from_evidence
    {G : IceCoreStratigraphyPackage} (M : MilankovitchCycleModel G)
    (E : MilankovitchCycleEvidence M) : MilankovitchCycleClosed M := by
  exact And.intro E.orbitalParametersClosed E.insolationComputedClosed

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse