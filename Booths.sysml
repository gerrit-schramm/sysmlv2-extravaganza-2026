package Booths {

    private import SpatialItems::*;
    private import ShapeItems::*;
    private import MeasurementReferences::*;
    private import SI::*;

     part def Booth :> SpatialItem {
        doc /* A booth at the conference */
        part institution: Institutions::Institution;
        item :>> shape : Rectangle { :>> length = 4 [m]; :>> width = 3 [m]; }
    }

    part inTech : Booth {
        doc /* Booth for InTech */
        part :>> institution = Institutions::inTech;
        attribute :>> coordinateFrame { :>> transformation : TranslationRotationSequence {:>>elements = (new Translation((-1.0, -4.0, 0.0)[source])); } }
    }

    part sensmetry : Booth {
        doc /* Booth for Sensmetry */
        part :>> institution = Institutions::sensmetry;
        attribute :>> coordinateFrame { :>> transformation : TranslationRotationSequence {:>>elements = (new Translation((3.0, -4.0, 0.0)[source])); } }
    }

    part kiMarktplatz : Booth {
        doc /* Booth for KI-Marktplatz */
        part :>> institution = Institutions::kiMarktplatz;
        attribute :>> coordinateFrame { :>> transformation : TranslationRotationSequence {:>>elements = (new Translation((-1.0, 4.0, 0.0)[source])); } }
    }

    part dassault : Booth {
        doc /* Booth for Dassault Systèmes */
        part :>> institution = Institutions::dassaultSystemes;
        attribute :>> coordinateFrame { :>> transformation : TranslationRotationSequence {:>>elements = (new Translation((-6.0, 4.0, 0.0)[source])); } }
    }

    part lieberLieber : Booth {
        doc /* Booth for Dassault Systèmes */
        part :>> institution = Institutions::lieberLieber;
        attribute :>> coordinateFrame { :>> transformation : TranslationRotationSequence {:>>elements = (new Translation((-7.0, 0.0, 0.0)[source])); } }
    }

    part tomSawyer : Booth {
        doc /* Booth for Dassault Systèmes */
        part :>> institution = Institutions::tomSawyer;
        attribute :>> coordinateFrame { :>> transformation : TranslationRotationSequence {:>>elements = (new Translation((-5.0, -4.0, 0.0)[source])); } }
    }

}
