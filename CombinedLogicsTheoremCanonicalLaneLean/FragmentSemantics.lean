import CombinedLogicsTheoremCanonicalLaneLean.CombinedLogicsDomainObjects

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure FragmentSemanticsPackage (O : CombinedLogicsAdmittedObject) where
  modalSignature : Type
  intuitionisticSignature : Type
  combinedLanguage : Type
  kripkeModel : Prop
  relationalTranslation : Prop
  completenessForAdmissibleClass : Prop

structure FragmentSemanticsEvidence {O : CombinedLogicsAdmittedObject}
    (F : FragmentSemanticsPackage O) where
  kripkeModelClosed : F.kripkeModel
  relationalTranslationClosed : F.relationalTranslation
  completenessForAdmissibleClassClosed : F.completenessForAdmissibleClass

def FragmentSemanticsClosed {O : CombinedLogicsAdmittedObject}
    (F : FragmentSemanticsPackage O) : Prop :=
  F.kripkeModel ∧ F.relationalTranslation ∧ F.completenessForAdmissibleClass

theorem fragment_semantics_closed_from_evidence
    {O : CombinedLogicsAdmittedObject} (F : FragmentSemanticsPackage O)
    (E : FragmentSemanticsEvidence F) : FragmentSemanticsClosed F := by
  exact And.intro E.kripkeModelClosed
    (And.intro E.relationalTranslationClosed E.completenessForAdmissibleClassClosed)

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse