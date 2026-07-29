import HautevilleHouse.CombinedLogicsTheoremCanonicalLaneLean.CombinedLogicsBridge

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.completeness

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse