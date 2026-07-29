import CombinedLogicsTheoremCanonicalLaneLean.CompactnessPackage

namespace HautevilleHouse
namespace CombinedLogicsTheoremCanonicalLaneLean

structure SoundnessPackage {S : SignaturePackage} (M : ModelClassPackage S) where
  axiomSchemeSound : Prop
  ruleSoundness : Prop
  derivationSoundness : Prop

structure SoundnessEvidence {S : SignaturePackage} {M : ModelClassPackage S}
    (P : SoundnessPackage M) where
  axiomSchemeSoundClosed : P.axiomSchemeSound
  ruleSoundnessClosed : P.ruleSoundness
  derivationSoundnessClosed : P.derivationSoundness

def SoundnessClosed {S : SignaturePackage} {M : ModelClassPackage S}
    (P : SoundnessPackage M) : Prop :=
  P.axiomSchemeSound ∧ P.ruleSoundness ∧ P.derivationSoundness

theorem soundness_closed_from_evidence
    {S : SignaturePackage} {M : ModelClassPackage S}
    (P : SoundnessPackage M) (E : SoundnessEvidence P) :
    SoundnessClosed P := by
  exact And.intro E.axiomSchemeSoundClosed
    (And.intro E.ruleSoundnessClosed E.derivationSoundnessClosed)

end CombinedLogicsTheoremCanonicalLaneLean
end HautevilleHouse