package Papers {

    private import ScalarValues::String;
    private import Personas::*;
    private import SI::minute;

    part def Paper {
        doc /* A Paper during the conference */
        attribute title: String;
        ref authors: Participant[1..*];
    }

    part sysMLvsAsTheglue : Paper    {
        attribute :>> title = "SysML v2 as the Glue: Scalable MBPLE with a System-Driven Feature Approach";
        ref :>> authors = (marcoBimbi, timWeilkiens);
    }

    part bestPracticesInDevelopingMethodologiesForSysMLV2 : Paper {
        attribute :>> title = "Best Practices in Developing Methodologies for SysML v2";
        ref :>> authors = (aurelijusMorkevicius);
    }

    part aRecursiveSysMLv2ArchitecturePatternAsAnEnablerForMOSA : Paper {
        attribute :>> title = "A Recursive SysML v2 Architecture Pattern as an Enabler for MOSA: From Operational Need to Multi-Level Requirement and Verification Evidence";
        ref :>> authors = (hugoOrmo);
    }

    part naeherDranAlsJeZuvor : Paper {
        attribute :>> title = "Näher dran als je zuvor - aber noch keine Ontologie";
        ref :>> authors = (alexanderKrumm);
    }

    part gitBasedSysMLv2 : Paper {
        attribute :>> title = "Git-based SysML v2: A First Look at User Experience and Automation Potential";
        ref :>> authors = (jasberBussemaker, carlosCabaleiro);
    }

    part collaborativeModeling : Paper {
        attribute :>> title = "Collaborative Modeling - a Case Study Using the SysML v2 API";
        ref :>> authors = (michaelHohmann, aaronBaake, svenKleiner, joergBarner, tillReymann);
    }

    part automatedModelBasedSafetyAndReliability : Paper {
        attribute :>> title = "Automated Model-based Safety & Reliability: SysMLv2 for Aerospace and Automotive";
        ref :>> authors = (rimantasVaicenavicius, simonDrauksas, justinasJankevicius, kestutisJankevicius, martynasStrazdas, juozasVaicenavicius);
    }

}
