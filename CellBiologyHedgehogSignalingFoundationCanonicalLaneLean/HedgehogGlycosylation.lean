import CellBiologyHedgehogSignalingFoundationCanonicalLaneLean.HedgehogLigandSynthesis

namespace HautevilleHouse
namespace CellBiologyHedgehogSignalingFoundationCanonicalLaneLean

structure HedgehogGlycosylationPackage {S : HedgehogLigandSynthesisPackage} (G : HedgehogLigandSynthesisEvidence S) where
  cholesterolModification : Prop
  palmitoylation : Prop
  ligandMaturation : Prop
  glycosylationClosedTerm : ligandMaturation

structure HedgehogGlycosylationEvidence {S : HedgehogLigandSynthesisPackage} {G : HedgehogGlycosylationPackage S} (L : HedgehogGlycosylationPackage G) where
  cholesterolModificationClosed : L.cholesterolModification
  palmitoylationClosed : L.palmitoylation
  ligandMaturationClosed : L.ligandMaturation

def HedgehogGlycosylationClosed {S : HedgehogLigandSynthesisPackage} {G : HedgehogGlycosylationPackage S} (L : HedgehogGlycosylationPackage G) : Prop :=
  L.cholesterolModification ∧ L.palmitoylation ∧ L.ligandMaturation

theorem hedgehog_glycosylation_closed_from_evidence {S : HedgehogLigandSynthesisPackage} {G : HedgehogGlycosylationPackage S} (L : HedgehogGlycosylationPackage G) (E : HedgehogGlycosylationEvidence L) : HedgehogGlycosylationClosed L := by
  exact And.intro E.cholesterolModificationClosed (And.intro E.palmitoylationClosed E.ligandMaturationClosed)

end CellBiologyHedgehogSignalingFoundationCanonicalLaneLean
end HautevilleHouse
