import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure LogicsSpace where
  carrier : Type
  structure : Type

structure CombinedLogicsAdmittedObject where
  space : LogicsSpace
  modalClosedUnderSubordination : Prop
  superintuitionisticDerivability : Prop
  admissibleRuleSet : Prop
  conclusion : admissibleRuleSet

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse