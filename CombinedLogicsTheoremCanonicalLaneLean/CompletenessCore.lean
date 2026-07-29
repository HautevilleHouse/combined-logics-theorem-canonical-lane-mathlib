import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure CompletenessCore where
  proofSystem : Type
  semantics : Type
  completenessProperty : Prop
  completenessPropertyTerm : completenessProperty

structure CompletenessCoreEvidence (C : CompletenessCore) where
  completenessPropertyClosed : C.completenessProperty

def CompletenessCoreClosed (C : CompletenessCore) : Prop :=
  C.completenessProperty

theorem completeness_core_closed_from_evidence (C : CompletenessCore) (E : CompletenessCoreEvidence C) :
    CompletenessCoreClosed C := by
  exact E.completenessPropertyClosed

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse