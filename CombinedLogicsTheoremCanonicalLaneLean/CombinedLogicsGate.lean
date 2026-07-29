import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

def combinedGate (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem combined_gate_from_admissible_class (A : AdmissibleClass) : combinedGate A := by
  exact A.gateWitness

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse