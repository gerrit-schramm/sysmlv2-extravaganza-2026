package Conference {

    private import Personas::*;
    private import Papers::Paper;
    private import Agenda::AgendaItem;
    private import Time::Iso8601DateTime;
    private import Layout::*;

    action def Conference {
        doc /* A conference event */
        attribute name: ScalarValues::String;
        attribute location: ScalarValues::String;
        attribute date: Iso8601DateTime;
        part chairs: Participant[1..*];
        part programCommittee: Participant[1..*];
        part papers: Paper[1..*];
        action agenda;
        part floorPlan: FloorPlan;
    }

    action s2xConference2026 : Conference {
        attribute :>> name = "SysMLv2 Extravaganza 2026";
        attribute :>> location = "Hamburg, Germany";
        attribute :>> date = new Iso8601DateTime("2026-11-03");
        part :>> floorPlan = Layout::innovationMarketplace;

        part :>> chairs = (
            philippHelle, 
            gerritSchramm, 
            timWeilkiens
        );

        part :>> programCommittee = (
            vinceMolnar, 
            yvesBernard, 
            jeanMichelBruel, 
            jasberBussemaker, 
            bernhardRumpe, 
            hansPeterDeKoning
        );

        part :>> papers = (
            Papers::sysMLvsAsTheglue, 
            Papers::bestPracticesInDevelopingMethodologiesForSysMLV2,
            Papers::automatedModelBasedSafetyAndReliability,

            Papers::aRecursiveSysMLv2ArchitecturePatternAsAnEnablerForMOSA, 
            Papers::collaborativeModeling,
            Papers::gitBasedSysMLv2, 

            Papers::naeherDranAlsJeZuvor
        );
        
        action :>> agenda {
            first Agenda::welcome then Agenda::keynote;
            first Agenda::keynote then Agenda::sysMLvsAsTheglue;
            first Agenda::sysMLvsAsTheglue then Agenda::bestPracticesInDevelopingMethodologiesForSysMLV2;
            first Agenda::bestPracticesInDevelopingMethodologiesForSysMLV2 then Agenda::automatedModelBasedSafetyAndReliability;
            first Agenda::automatedModelBasedSafetyAndReliability then Agenda::lunchBreak;

            first Agenda::lunchBreak then Agenda::aRecursiveSysMLv2ArchitecturePatternAsAnEnablerForMOSA;
            first Agenda::aRecursiveSysMLv2ArchitecturePatternAsAnEnablerForMOSA then Agenda::collaborativeModeling;
            first Agenda::collaborativeModeling then Agenda::gitBasedSysMLv2;
            first Agenda::gitBasedSysMLv2 then Agenda::afternoonCoffeeBreak;
            
            first Agenda::afternoonCoffeeBreak then Agenda::closerThanEver;
            first Agenda::closerThanEver then Agenda::finalWords;
        }
    }
}
