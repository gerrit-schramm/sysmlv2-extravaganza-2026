package Agenda {

    private import ScalarValues::String;
    private import Personas::*;
    private import SI::minute;

    abstract action def AgendaItem {
        doc /* An item in the conference agenda */
        attribute title: String;
        attribute duration: ISQ::DurationValue;
    }

    action def Presentation :> AgendaItem {
        doc /* A Paper during the conference */
        attribute :>> title: String;
        attribute :>> duration: ISQ::DurationValue;
        part paper : Papers::Paper;
        ref presenter: Participant[1..*];
    }

    action def Break :> AgendaItem {
        doc /* A break in the conference agenda */
    }

    action keynote : Presentation {
        attribute :>> title = "Keynote: The Future of SysML v2";
        attribute :>> duration = 60 [minute];
        ref :>> presenter = (philippHelle, gerritSchramm);
    }

    action welcome : Break {
        attribute :>> title = "Welcome";
        attribute :>> duration = 30 [minute];
    }

    action lunchBreak : Break {
        attribute :>> title = "Lunch Break";
        attribute :>> duration = 75 [minute];
    }

    action afternoonCoffeeBreak : Break {
        attribute :>> title = "Afternoon Coffee Break";
        attribute :>> duration = 45 [minute];
    }

    action finalWords : Break {
        attribute :>> title = "Final Words and Closing";
        attribute :>> duration = 15 [minute];
    }

    action sysMLvsAsTheglue : Presentation {
        attribute :>> title = "SysML v2 as the Glue: Scalable MBPLE with a System-Driven Feature Approach";
        attribute :>> duration = 45 [minute];
        part :>> paper = Papers::sysMLvsAsTheglue;
        ref :>> presenter = (marcoBimbi, timWeilkiens);
    }

    action bestPracticesInDevelopingMethodologiesForSysMLV2 : Presentation {
        attribute :>> title = "Best Practices in Developing Methodologies for SysML v2";
        attribute :>> duration = 45 [minute];
        part :>> paper = Papers::bestPracticesInDevelopingMethodologiesForSysMLV2;
        ref :>> presenter = (aurelijusMorkevicius);
    }

    action aRecursiveSysMLv2ArchitecturePatternAsAnEnablerForMOSA : Presentation {
        attribute :>> title = "A Recursive SysML v2 Architecture Pattern as an Enabler for MOSA: From Operational Need to Multi-Level Requirement and Verification Evidence";
        attribute :>> duration = 45 [minute];
        part :>> paper = Papers::aRecursiveSysMLv2ArchitecturePatternAsAnEnablerForMOSA;
        ref :>> presenter = (hugoOrmo);
    }

    action closerThanEver : Presentation {
        attribute :>> title = "Closer than ever - but not an ontology yet";
        attribute :>> duration = 45 [minute];
        part :>> paper = Papers::naeherDranAlsJeZuvor;
        ref :>> presenter = (dennisHillig);
    }

    action gitBasedSysMLv2 : Presentation {
        attribute :>> title = "Git-based SysML v2: A First Look at User Experience and Automation Potential";
        attribute :>> duration = 45 [minute];
        part :>> paper = Papers::gitBasedSysMLv2;
        ref :>> presenter = (jasperBussemaker);
    }

    action collaborativeModeling : Presentation {
        attribute :>> title = "Collaborative Modeling - a Case Study Using the SysML v2 API";
        attribute :>> duration = 45 [minute];
        part :>> paper = Papers::collaborativeModeling;
        ref :>> presenter = (michaelHohmann);
    }

    action automatedModelBasedSafetyAndReliability : Presentation {
        attribute :>> title = "Automated Model-based Safety & Reliability: SysMLv2 for Aerospace and Automotive";
        attribute :>> duration = 45 [minute];
        part :>> paper = Papers::automatedModelBasedSafetyAndReliability;
        ref :>> presenter = (zygimantasGelbuda);
    }

}
