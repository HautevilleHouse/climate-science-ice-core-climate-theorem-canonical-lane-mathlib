import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

structure GlacialInterglacialCyclesPackage where
  iceVolumeProxy : Type
  seaLevelRecord : Type
  terminationTiming : Type
  orbitalPacingDemonstrated : Prop
  glacialInceptionDetected : Prop
  interglacialDurationMeasured : Prop
  terminationEventCatalogued : Prop
  asymmetryQuantified : Prop

structure GlacialInterglacialCyclesEvidence (G : GlacialInterglacialCyclesPackage) where
  orbitalPacingDemonstratedClosed : G.orbitalPacingDemonstrated
  glacialInceptionDetectedClosed : G.glacialInceptionDetected
  interglacialDurationMeasuredClosed : G.interglacialDurationMeasured
  terminationEventCataloguedClosed : G.terminationEventCatalogued
  asymmetryQuantifiedClosed : G.asymmetryQuantified

def GlacialInterglacialCyclesClosed (G : GlacialInterglacialCyclesPackage) : Prop :=
  G.orbitalPacingDemonstrated ∧ G.glacialInceptionDetected ∧
  G.interglacialDurationMeasured ∧ G.terminationEventCatalogued ∧
  G.asymmetryQuantified

theorem glacial_interglacial_cycles_closed_from_evidence
    (G : GlacialInterglacialCyclesPackage) (E : GlacialInterglacialCyclesEvidence G) :
    GlacialInterglacialCyclesClosed G := by
  exact And.intro E.orbitalPacingDemonstratedClosed
    (And.intro E.glacialInceptionDetectedClosed
      (And.intro E.interglacialDurationMeasuredClosed
        (And.intro E.terminationEventCataloguedClosed E.asymmetryQuantifiedClosed)))

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse
