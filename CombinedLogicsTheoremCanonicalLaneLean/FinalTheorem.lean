import HautevilleHouse.CombinedLogicsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

def ConstrainedCombinedLogicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_combined_logics_endgame (A : AdmissibleClass) :
    ConstrainedCombinedLogicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse