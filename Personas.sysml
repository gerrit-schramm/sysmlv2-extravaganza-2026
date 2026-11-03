package Personas {

    private import ScalarValues::String;
    private import ScalarValues::Boolean;
    private import Institutions::*;

    part def Participant {
        doc /* A participant in the conference */
        attribute name: String;
        part institution: Institution;
    }

    part philippHelle : Participant {
        doc /* Philipp Helle */
        attribute :>> name = "Philipp Helle";
        part :>> institution = airbus;
    }

    part gerritSchramm : Participant {
        doc /* Gerrit Schramm */
        attribute :>> name = "Gerrit Schramm";
        part :>> institution = airbus;
    }

    part vinceMolnar : Participant {
        doc /* Vince Molnár */
        attribute :>> name = "Vince Molnár";
        part :>> institution = budapestUniversity;
    }

    part jeanMichelBruel : Participant {
        doc /* Jean-Michel Bruel */
        attribute :>> name = "Jean-Michel Bruel";
        part :>> institution = irit;
    }

    part bernhardRumpe : Participant {
        doc /* Bernhard Rumpe */
        attribute :>> name = "Bernhard Rumpe";
        part :>> institution = rwthAachen;
    }

    part hansPeterDeKoning : Participant {
        doc /* Hans-Peter de Koning */
        attribute :>> name = "Hans-Peter de Koning";
        part :>> institution = deKonsult;
    }

    part yvesBernard : Participant {
        doc /* Yves Bernard */
        attribute :>> name = "Yves Bernard";
        part :>> institution = airbus;
    }

    part marcoBimbi : Participant {
        doc /* Marco Bimbi */
        attribute :>> name = "Marco Bimbi";
        part :>> institution = mathWorks;
    }

    part timWeilkiens : Participant {
        doc /* Tim Weilkiens */
        attribute :>> name = "Tim Weilkiens";
        part :>> institution = oose;
    }

    part aurelijusMorkevicius : Participant {
        doc /* Aurelijus Morkevicius */
        attribute :>> name = "Aurelijus Morkevicius";
        part :>> institution = dassaultSystemes;
    }

    part hugoOrmo : Participant {
        doc /* Hugo Ormo */
        attribute :>> name = "Hugo Ormo";
        part :>> institution = nttData;
    }

    part alexanderKrumm : Participant {
        doc /* Alexander Krumm */
        attribute :>> name = "Alexander Krumm";
        part :>> institution = vPathAI;
    }

    part dennisHillig : Participant {
        doc /* Dennis Hillig */
        attribute :>> name = "Dennis Hillig";
        part :>> institution = vPathAI;
    }

    part jasperBussemaker : Participant {
        doc /* Jasber Bussemaker */
        attribute :>> name = "Jasber Bussemaker";
        part :>> institution = dlr;
    }

    part carlosCabaleiro : Participant {
        doc /* Carlos Cabaleiro */
        attribute :>> name = "Carlos Cabaleiro";
        part :>> institution = dlr;
    }

    part michaelHohmann : Participant {
        doc /* Dr. Michael Hohmann */
        attribute :>> name = "Dr. Michael Hohmann";
        part :>> institution = em;
    }

    part aaronBaake : Participant {
        doc /* Aaron Baake */
        attribute :>> name = "Aaron Baake";
        part :>> institution = em;
    }

    part svenKleiner : Participant {
        doc /* Dr. Sven Kleiner */
        attribute :>> name = "Dr. Sven Kleiner";
        part :>> institution = em;
    }

    part joergBarner : Participant {
        doc /* Dr. Joerg Barner */
        attribute :>> name = "Dr. Joerg Barner";
        part :>> institution = em;
    }

    part tillReymann : Participant {
        doc /* Till Reymann */
        attribute :>> name = "Till Reymann";
        part :>> institution = schaefflerTechnologies;
    }

    part rimantasVaicenavicius : Participant {
        doc /* Rimantas Vaicenavicius */
        attribute :>> name = "Rimantas Vaicenavicius";
        part :>> institution = sensmetry;
    }

    part simonDrauksas : Participant {
        doc /* Simon Drauksas */
        attribute :>> name = "Simon Drauksas";
        part :>> institution = sensmetry;
    }

    part justinasJankevicius : Participant {
        doc /* Justinas Jankevicius */
        attribute :>> name = "Justinas Jankevicius";
        part :>> institution = sensmetry;
    }

    part kestutisJankevicius : Participant {
        doc /* Kestutis Jankevicius */
        attribute :>> name = "Kestutis Jankevicius";
        part :>> institution = sensmetry;
    }

    part martynasStrazdas : Participant {
        doc /* Martynas Strazdas */
        attribute :>> name = "Martynas Strazdas";
        part :>> institution = sensmetry;
    }

    part juozasVaicenavicius : Participant {
        doc /* Juozas Vaicenavicius */
        attribute :>> name = "Juozas Vaicenavicius";
        part :>> institution = sensmetry;
    }

    part zygimantasGelbuda : Participant {
        doc /* Zygimantas Gelbuda */
        attribute :>> name = "Zygimantas Gelbuda";
        part :>> institution = sensmetry;
    }

}
