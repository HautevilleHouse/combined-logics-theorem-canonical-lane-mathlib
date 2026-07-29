import CombinedLogicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure CombinedLogicStructure where
  carrier : Type
  language : Type
  signature : List (String × Nat)

structure CombinedLogicAdmittedObject where
  structure : CombinedLogicStructure
  sound : Prop
  complete : Prop
  compact : Prop
  conclusion : sound ∧ complete ∧ compact

def CombinedLogicWitnessClosed (O : CombinedLogicAdmittedObject) : Prop :=
  O.conclusion

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse