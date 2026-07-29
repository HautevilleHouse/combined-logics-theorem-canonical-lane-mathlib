import HautevilleHouse.CombinedLogicsTheoremCanonicalLaneLean.CombinedLogicsMixedRealizability

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure CombinedLogicsProofTheoryPackage where
  soundnessTheorem : Prop
  completenessTheorem : Prop
  interpolationProperty : Prop
  cutElimination : Prop

def CombinedLogicsProofTheoryClosed (P : CombinedLogicsProofTheoryPackage) : Prop :=
  P.soundnessTheorem ∧ P.completenessTheorem ∧ P.interpolationProperty ∧ P.cutElimination

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse