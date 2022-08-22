INCLUDE local_template.ink
INCLUDE mayor.ink
INCLUDE mark_of_cain.ink
INCLUDE dentist.ink
INCLUDE fortune_teller.ink
INCLUDE city_hall.ink
INCLUDE psychic_emporium.ink
INCLUDE accuse.ink
INCLUDE prolog.ink
INCLUDE mayor_ch1_storylet.ink

//evidence state tracking
VAR dirt_dentist = 0
VAR dirt_prosthetist = 0




LIST knowledge = (starting_clue),choice1,choice2

VAR actions_taken = 0
VAR max_actions_per_ch = 3

VAR chapter = 1
LIST loc = local_template,(mayor),(denstist),(fortune_teller),(city_hall),(dental_clinic),psychic_emporium //(city_hall),market_place,fortune_teller_emporium,medical_street

->prolog_knot
===root===
Day{chapter}
->discription->
{loc ? mayor:
    *[Mayor] -> mayor_knot
}
{loc ? denstist:
    *[denstist] -> denstist_knot
}
{loc ? denstist:
    *[fortune_teller] -> fortune_teller_knot
}
{loc ? denstist:
    *[City Hall] -> fortune_teller_knot
}
{loc ? city_hall:
    *[City Hall] ->city_hall_knot
}
{loc ? psychic_emporium: 
    *[psychic_emporium] ->psychic_emporium_knot
}
// {loc ? medical_street: 
//     +[Medical Street] ->medical_street
// }
+[Rest for the Night] ->up_state->

+[accuse a suspect and finish the case] -> accuse

- ->root

=up_state
~chapter++
{chapter == 4:
    ->accuse
}
->->



=discription
{chapter:
    -1: It’s a cold and crisp morning. I see that despite the recent murder, the town still stays active. Business has to run, I suppose. 

        I wonder just how much of this I’ll be able to uncover today. 

    -2: You decided to keep pushing on with investigation so you scan your journal. Since there wasn't enough evidence to make an accusation yet, you decide you must revisit everyone to find more evidence. 
    -3: You’ve decided you need more evidence. You receive news that there has been another abduction. You scan through the daily newspaper and see a picture of the young teenager you met just yesterday.
}
->->

===use_action(->ret)===
{actions_taken > max_actions_per_ch:
    you are too exhausted to investigate more today
    ->ret
}
~actions_taken++