import ClimateScienceIceCoreClimateTheoremCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib.Core
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateTheoremCanonicalLaneLean

open HautevilleHouse.canonicalLaneMathlib.Core

structure IceCoreClimateSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure IceCoreClimateAdmittedObject where
  space : IceCoreClimateSpace
  milankovitchCycles : Prop
  dansgaardOeschgerEvents : Prop
  isotopicPaleothermometry : Prop
  energyBalanceModel : Prop
  conclusion : milankovitchCycles ∧ dansgaardOeschgerEvents ∧ isotopicPaleothermometry ∧ energyBalanceModel

structure IceCoreClimateEndgameState where
  object : IceCoreClimateAdmittedObject

def ClimateWitnessClosed (O : IceCoreClimateAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : IceCoreClimateAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClimateWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClimateScienceIceCoreClimateTheoremCanonicalLaneLean
end HautevilleHouse
