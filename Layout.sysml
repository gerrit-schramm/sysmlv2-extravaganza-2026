package Layout {

    private import SpatialItems::*;
    private import ShapeItems::*;
    private import MeasurementReferences::*;
    private import Booths::Booth;
    private import SI::m;

    part def FloorPlan {
        doc /* The floor plan of the conference */
        part rooms: Room[1..*];
    }

    part def Room :> SpatialItem;
    
    abstract part def Monument :> SpatialItem;

    part innovationMarketplace : FloorPlan, SpatialItem {
        item :>> shape : Rectangle { :>> length = 17.75 [m]; :>> width = 11.0 [m]; }
        attribute :>> coordinateFrame {
            :>> transformation : TranslationRotationSequence {
                :>> elements = (new Translation((0.0, 0.0, 0.0)[source]));
            }
        }

        part booths : Booth [*] = (
            Booths::inTech, 
            Booths::sensmetry, 
            Booths::kiMarktplatz, 
            Booths::dassault,
            Booths::lieberLieber,
            Booths::tomSawyer);
    }

}
