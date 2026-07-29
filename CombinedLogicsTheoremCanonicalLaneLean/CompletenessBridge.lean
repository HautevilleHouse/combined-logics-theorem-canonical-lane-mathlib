import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure CompletenessBridge (L : LogicalSystem) where
  semanticalInterpretation : Type u
  validity : L.formulas → Prop
  soundness : ∀ φ, L.derivability φ → validity φ
  completeness : ∀ φ, validity φ → L.derivability φ

theorem bridgeClosed_from_completeness (L : LogicalSystem) (C : CompletenessBridge L) :
    bridgeClosed (AdmissibleClass.mk (mkAdmittedObject L) (C.completeness (some φ)) True (Or.inl (C.completeness (some φ)))) := by
  exact C.completeness (some φ)

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse