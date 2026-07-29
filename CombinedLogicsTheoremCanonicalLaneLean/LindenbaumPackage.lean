import CombinedLogicsTheoremCanonicalLaneLean.FiniteCharacter

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure LindenbaumPackage {S : SignaturePackage}
    (F : FiniteCharacterPackage S) where
  consistentSet : Prop
  maximalExtension : Prop
  henkinConstruction : Prop

structure LindenbaumEvidence {S : SignaturePackage}
    {F : FiniteCharacterPackage S} (L : LindenbaumPackage F) where
  consistentSetClosed : L.consistentSet
  maximalExtensionClosed : L.maximalExtension
  henkinConstructionClosed : L.henkinConstruction

def LindenbaumClosed {S : SignaturePackage}
    {F : FiniteCharacterPackage S} (L : LindenbaumPackage F) : Prop :=
  L.consistentSet ∧ L.maximalExtension ∧ L.henkinConstruction

theorem lindenbaum_closed_from_evidence
    {S : SignaturePackage} {F : FiniteCharacterPackage S}
    (L : LindenbaumPackage F) (E : LindenbaumEvidence L) :
    LindenbaumClosed L := by
  exact And.intro E.consistentSetClosed
    (And.intro E.maximalExtensionClosed E.henkinConstructionClosed)

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse