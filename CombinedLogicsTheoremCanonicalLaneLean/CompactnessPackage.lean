import CombinedLogicsTheoremCanonicalLaneLean.FiniteCharacter

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure CompactnessPackage {S : SignaturePackage}
    {F : FiniteCharacterPackage S} (L : LindenbaumPackage F) where
  ultrafilterExtension : Prop
  compactnessTheorem : Prop

structure CompactnessEvidence {S : SignaturePackage}
    {F : FiniteCharacterPackage S} {L : LindenbaumPackage F}
    (C : CompactnessPackage L) where
  ultrafilterExtensionClosed : C.ultrafilterExtension
  compactnessTheoremClosed : C.compactnessTheorem

def CompactnessClosed {S : SignaturePackage}
    {F : FiniteCharacterPackage S} {L : LindenbaumPackage F}
    (C : CompactnessPackage L) : Prop :=
  C.ultrafilterExtension ∧ C.compactnessTheorem

theorem compactness_closed_from_evidence
    {S : SignaturePackage} {F : FiniteCharacterPackage S}
    {L : LindenbaumPackage F} (C : CompactnessPackage L)
    (E : CompactnessEvidence C) : CompactnessClosed C := by
  exact And.intro E.ultrafilterExtensionClosed E.compactnessTheoremClosed

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse