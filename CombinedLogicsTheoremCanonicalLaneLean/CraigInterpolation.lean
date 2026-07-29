import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure CraigInterpolation (L1 L2 : LogicalSystem) where
  sharedSignature : Type u
  interpolant : L1.formulas → L2.formulas → Prop
  interpolationTheorem : ∀ φ ∈ L1.formulas, ∀ ψ ∈ L2.formulas, (L1.derivability φ ∧ L2.derivability ψ) → ∃ θ, interpolant φ θ ∧ interpolant θ ψ

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse