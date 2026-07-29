import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure LogicalSystem where
  signature : Type u
  formulas : Type v
  axioms : List formulas
  inferenceRules : Type w
  derivability : formulas → Prop

structure LogicalSystemEvidence (L : LogicalSystem) where
  axiomsDerivable : ∀ a ∈ L.axioms, L.derivability a
  rulesPreserveDerivability : Prop

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse