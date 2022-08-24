INCLUDE 1_mayor.ink
INCLUDE 1_dentist.ink
INCLUDE 1_city_hall.ink
INCLUDE 1_accuse.ink
INCLUDE 1_prolog.ink
INCLUDE 1_fortune_teller’s_emporium.ink
INCLUDE 1_dental_clinic.ink
INCLUDE 1_prosthetist.ink
INCLUDE 1_prosthetics_clinic.ink
INCLUDE 1_fortune_teller.ink
INCLUDE 3_MofC_mayor_ch1.ink
INCLUDE 3_MofC_city_hall.ink
INCLUDE 2_cycle_mayor.ink
INCLUDE 2_cycle_dentist.ink
INCLUDE 3_MofC_dentist.ink
INCLUDE 2_cycle_dental_clinic.ink
INCLUDE 3_MofC_dental_clinic.ink
INCLUDE 2_cycle_prosthetist.ink
INCLUDE 3_MofC_prosthetist.ink
INCLUDE 2_cycle_prosthetics_clinic.ink
INCLUDE 3_MofC_prosthetics_clinic.ink
INCLUDE 2_cycle_fortune_teller.ink
INCLUDE 2_cycle_fortune_teller_emporium.ink
INCLUDE 1_day2_prolog.ink
INCLUDE 3_MofC_mayor_ch2.ink
INCLUDE 3_MofC_dentist_ch2.ink
INCLUDE 3_MofC_prosthetist_ch2.ink
INCLUDE 3_MofC_fortune_teller_ch2.ink
INCLUDE 1_accuse_prolog.ink








//evidence state tracking
VAR dirt_dentist = 0
VAR dirt_prosthetist = 0
VAR dirt_fortune_teller = 0
VAR dirt_mayor = 0

VAR iterator = 0




LIST knowledge = (starting_clue),choice1,choice2

VAR actions_taken = 0
VAR max_actions_per_ch = 3

VAR chapter = 1
LIST loc = (mayor),(denstist),(fortune_teller),(city_hall),(Dental_clinic),(fortune_teller_emporium),(Prosthetist),(Posthetics_clinic)

->prolog_knot

===root===
Day{chapter}
->discription->
{loc ? mayor:
    +[Mayor] -> mayor_knot
}
{loc ? city_hall:
    *[City Hall] ->city_hall_knot
}
{loc ? denstist:
    +[Denstist] -> denstist_knot
}
{loc ? Dental_clinic:
    *[Dental clinic] -> dental_clinic
}
{loc ? fortune_teller:
    +[Fortune teller] -> fortune_teller_knot
}
{loc ? fortune_teller_emporium: 
    *[Fortune teller emporium] ->fortune_teller_emporium_knot
}
{loc ? Prosthetist:
    +[Prosthetist] -> prosthetist
}
{loc ? Posthetics_clinic: 
    *[Posthetics clinic] ->prosthetics_clinic
}

+[Rest for the Night] ->up_state->

+[accuse a suspect and finish the case] -> accuse_prolog

- ->root

=up_state
~chapter++
{chapter == 2:
    ~loc -= city_hall
    ~loc -= Dental_clinic
    ~loc -= fortune_teller_emporium
    ~loc -= Posthetics_clinic
    ->day2_prolog->
}
{chapter == 3:
    ->accuse_prolog
}
->->



=discription
{chapter:
    -1: It’s a cold and crisp morning. I see that despite the recent murder, the town still stays active. Business has to run, I suppose. 

        I wonder just how much of this I’ll be able to uncover today. 

    -2: 	The case has changed since I started working on it… I should prioritize asking questions and I should be very careful with exactly what I ask each person I speak to today…
 
    -3: You’ve decided you need more evidence. You receive news that there has been another abduction. You scan through the daily newspaper and see a picture of the young teenager you met just yesterday.
}
->->
