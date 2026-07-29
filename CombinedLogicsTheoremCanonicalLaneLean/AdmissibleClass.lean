import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CombinedLogicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CombinedLogicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse