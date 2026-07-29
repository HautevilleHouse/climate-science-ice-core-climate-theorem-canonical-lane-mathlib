import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure OrbitalForcingPackage where
  eccentricity : ℕ → ℝ
  obliquity : ℕ → ℝ
  precession : ℕ → ℝ
  insolationComputed : Prop
  milankovitchCyclesPresent : Prop
  insolationComputedTerm : insolationComputed
  milankovitchCyclesPresentTerm : milankovitchCyclesPresent

def OrbitalForcingClosed (O : OrbitalForcingPackage) : Prop :=
  O.insolationComputed ∧ O.milankovitchCyclesPresent

theorem orbital_forcing_closed (O : OrbitalForcingPackage) :
    OrbitalForcingClosed O := by
  exact And.intro O.insolationComputedTerm O.milankovitchCyclesPresentTerm

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse