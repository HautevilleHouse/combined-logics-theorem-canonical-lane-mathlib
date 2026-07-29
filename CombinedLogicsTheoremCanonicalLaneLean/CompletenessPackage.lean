import HautevilleHouse.CombinedLogicsTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure CompletenessPackage where
  syntaxDefined : Prop
  semanticsDefined : Prop
  soundnessProved : Prop
  completenessProved : Prop

structure CompletenessEvidence (P : CompletenessPackage) where
  syntaxDefinedClosed : P.syntaxDefined
  semanticsDefinedClosed : P.semanticsDefined
  soundnessProvedClosed : P.soundnessProved
  completenessProvedClosed : P.completenessProved

def CompletenessClosed (P : CompletenessPackage) : Prop :=
  P.syntaxDefined ∧ P.semanticsDefined ∧ P.soundnessProved ∧ P.completenessProved

theorem completeness_closed_from_evidence (P : CompletenessPackage) (E : CompletenessEvidence P) : CompletenessClosed P := by
  exact And.intro E.syntaxDefinedClosed (And.intro E.semanticsDefinedClosed (And.intro E.soundnessProvedClosed E.completenessProvedClosed))

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse