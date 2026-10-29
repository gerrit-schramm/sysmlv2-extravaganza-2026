package Institutions {

    private import ScalarValues::String;
    private import ScalarValues::Boolean;

    abstract part def Institution {
        doc /* An organization, assiciation or company */
        attribute name: String;
        attribute isToolVendor: Boolean;
    }

    part def Enterprise :> Institution {
        doc /* A company with a large number of employees and a significant market share */
    }

    part def <SME> SmallMediumEnterprise :> Institution {
        doc /* A company with a medium number of employees and a moderate market share */
    }

    part def ResearchInstitute :> Institution {
        doc /* A research institute focused on scientific studies and advancements */
        attribute :>> isToolVendor = false;
    }

    part def Club :> Institution {
        doc /* A non-profit organization or association */
    }

    part airbus : Enterprise {
        attribute :>> name = "Airbus";
        attribute :>> isToolVendor = false;
    }

    part mathWorks : Enterprise {
        attribute :>> name = "The MathWorks, Inc.";
        attribute :>> isToolVendor = true;
    }

    part oose : SME {
        attribute :>> name = "oose eG";
        attribute :>> isToolVendor = false;
    }

    part dassaultSystemes : Enterprise {
        attribute :>> name = "Dassault Systèmes";
        attribute :>> isToolVendor = true;
    }

    part nttData : SME {
        attribute :>> name = "NTT DATA deutschland SE";
        attribute :>> isToolVendor = false;
    }

    part vPathAI : SME {
        attribute :>> name = "vPath AI";
        attribute :>> isToolVendor = true;
    }

    part dlr : ResearchInstitute {
        attribute :>> name = "German Aerospace Center (DLR)";
    }

    part em : SME {
        attribute :>> name = ":em engineering methods AG";
        attribute :>> isToolVendor = false;
    }

    part schaefflerTechnologies: SME {
        attribute :>> name = "Schaeffler Technologies AG";
        attribute :>> isToolVendor = false;
    }

    part sensmetry : SME {
        attribute :>> name = "UAB Sensmetry";
        attribute :>> isToolVendor = true;
    }

    part budapestUniversity : ResearchInstitute {
        attribute :>> name = "Budapest University of Technology and Economics";
    }

    part irit : ResearchInstitute { 
        attribute :>> name = "IRIT, University of Toulouse";
    }

    part rwthAachen : ResearchInstitute {   
        attribute :>> name = "RWTH Aachen University";
    }

    part deKonsult : SME {    
        attribute :>> name = "deKonsult";
        attribute :>> isToolVendor = false;
    }

    part kiMarktplatz : SME {
        attribute :>> name = "AI Marketplace GmbH";
        attribute :>> isToolVendor = true;
    }

    part inTech : SME {
        attribute :>> name = "in-tech GmbH";
        attribute :>> isToolVendor = true;
    }

    part lieberLieber : SME {
        attribute :>> name = "LieberLieber Software GmbH";
        attribute :>> isToolVendor = true;
    }

    part tomSawyer : SME {
        attribute :>> name = "Tom Sawyer Software";
        attribute :>> isToolVendor = true;
    }

}
