import HautevilleHouse.CombinedLogicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure CombinedLogicsMixedRealizabilityPackage where
  combinedLogicSystem : Prop
  mixingRule : Prop
  realizabilityModel : Prop
  completeAxiomatization : Prop

def CombinedLogicsMixedRealizabilityClosed (P : CombinedLogicsMixedRealizabilityPackage) : Prop :=
  P.combinedLogicSystem ∧ P.mixingRule ∧ P.realizabilityModel ∧ P.completeAxiomatization

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse