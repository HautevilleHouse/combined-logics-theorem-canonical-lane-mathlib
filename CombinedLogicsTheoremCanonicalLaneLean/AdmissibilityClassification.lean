import CombinedLogicsTheoremCanonicalLaneLean.FragmentSemantics

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure AdmissibilityClassificationPackage {O : CombinedLogicsAdmittedObject}
    (F : FragmentSemanticsPackage O) where
  admissibleRules : Prop
  derivingSystem : Prop
  decisionProcedure : Prop
  finiteModelProperty : Prop
  tabularityCondition : Prop

structure AdmissibilityClassificationEvidence {O : CombinedLogicsAdmittedObject}
    {F : FragmentSemanticsPackage O} (A : AdmissibilityClassificationPackage F) where
  admissibleRulesClosed : A.admissibleRules
  derivingSystemClosed : A.derivingSystem
  decisionProcedureClosed : A.decisionProcedure
  finiteModelPropertyClosed : A.finiteModelProperty
  tabularityConditionClosed : A.tabularityCondition

def AdmissibilityClassificationClosed {O : CombinedLogicsAdmittedObject}
    {F : FragmentSemanticsPackage O} (A : AdmissibilityClassificationPackage F) : Prop :=
  A.admissibleRules ∧ A.derivingSystem ∧ A.decisionProcedure ∧
  A.finiteModelProperty ∧ A.tabularityCondition

theorem admissibility_classification_closed_from_evidence
    {O : CombinedLogicsAdmittedObject} {F : FragmentSemanticsPackage O}
    (A : AdmissibilityClassificationPackage F) (E : AdmissibilityClassificationEvidence A) :
    AdmissibilityClassificationClosed A := by
  exact And.intro E.admissibleRulesClosed
    (And.intro E.derivingSystemClosed
      (And.intro E.decisionProcedureClosed
        (And.intro E.finiteModelPropertyClosed E.tabularityConditionClosed)))

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse