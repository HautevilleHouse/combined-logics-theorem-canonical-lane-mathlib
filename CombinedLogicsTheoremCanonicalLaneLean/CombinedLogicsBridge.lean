import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure CombinedLogicsAdmittedObject where
  logicSystem : Type u
  syntax : Prop
  semantics : Prop
  completeness : Prop
  conclusion : completeness

structure AdmissibleClass where
  object : CombinedLogicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.completeness ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse