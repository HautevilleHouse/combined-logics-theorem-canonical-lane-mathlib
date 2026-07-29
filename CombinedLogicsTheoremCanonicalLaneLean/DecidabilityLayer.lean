import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure DecidabilityLayer where
  logicFragment : Type u
  decisionProcedure : Type v
  decidabilityProperty : Prop
  decidabilityPropertyTerm : decidabilityProperty

structure DecidabilityLayerEvidence (D : DecidabilityLayer) where
  decidabilityPropertyClosed : D.decidabilityProperty

def DecidabilityLayerClosed (D : DecidabilityLayer) : Prop :=
  D.decidabilityProperty

theorem decidability_layer_closed_from_evidence (D : DecidabilityLayer) (E : DecidabilityLayerEvidence D) :
    DecidabilityLayerClosed D := by
  exact E.decidabilityPropertyClosed

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse