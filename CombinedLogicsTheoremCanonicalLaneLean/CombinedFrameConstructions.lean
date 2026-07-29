import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure CombinedFrame where
  language : Type u
  models : Type v
  frameProperty : Prop
  framePropertyTerm : frameProperty

structure CombinedFrameEvidence (F : CombinedFrame) where
  framePropertyClosed : F.frameProperty

def CombinedFrameClosed (F : CombinedFrame) : Prop :=
  F.frameProperty

theorem combined_frame_closed_from_evidence (F : CombinedFrame) (E : CombinedFrameEvidence F) :
    CombinedFrameClosed F := by
  exact E.framePropertyClosed

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse