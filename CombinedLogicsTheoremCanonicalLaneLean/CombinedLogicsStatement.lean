import CombinedLogicsTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure CombinedLogicsProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def combinedLogicsProofObligation : CombinedLogicsProofObligation := {
  sourceKey := "combined-logics-canonical-lane",
  theoremObject := "Combined Logics Theorem",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem theorem_specific_endgame_pilot_checked :
    (∀ A : AdmissibleClass, ConstrainedTheoremClosure A) := by
  intro A
  exact constrained_theorem_closure A

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse