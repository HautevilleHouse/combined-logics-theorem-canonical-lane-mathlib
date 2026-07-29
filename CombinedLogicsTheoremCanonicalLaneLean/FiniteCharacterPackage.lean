import CombinedLogicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure FiniteCharacterPackage (S : SignaturePackage) where
  finiteSatisfiability : Prop
  compactnessInput : Prop

structure FiniteCharacterEvidence {S : SignaturePackage}
    (F : FiniteCharacterPackage S) where
  finiteSatisfiabilityClosed : F.finiteSatisfiability
  compactnessInputClosed : F.compactnessInput

def FiniteCharacterClosed {S : SignaturePackage}
    (F : FiniteCharacterPackage S) : Prop :=
  F.finiteSatisfiability ∧ F.compactnessInput

theorem finite_character_closed_from_evidence
    {S : SignaturePackage} (F : FiniteCharacterPackage S)
    (E : FiniteCharacterEvidence F) : FiniteCharacterClosed F := by
  exact And.intro E.finiteSatisfiabilityClosed E.compactnessInputClosed

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse