import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure InterpolationTheoremPackage where
  languagePair : Type u × Type u
  interpolationProperty : Prop
  interpolationPropertyTerm : interpolationProperty

structure InterpolationTheoremPackageEvidence (I : InterpolationTheoremPackage) where
  interpolationPropertyClosed : I.interpolationProperty

def InterpolationTheoremPackageClosed (I : InterpolationTheoremPackage) : Prop :=
  I.interpolationProperty

theorem interpolation_theorem_package_closed_from_evidence (I : InterpolationTheoremPackage) (E : InterpolationTheoremPackageEvidence I) :
    InterpolationTheoremPackageClosed I := by
  exact E.interpolationPropertyClosed

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse