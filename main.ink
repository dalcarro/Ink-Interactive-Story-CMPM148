INCLUDE local_template.ink
INCLUDE mayor.ink
INCLUDE mark_of_cain.ink
INCLUDE dentist.ink
INCLUDE fortune_teller.ink
INCLUDE city_hall.ink
INCLUDE psychic_emporium.ink
INCLUDE accuse.ink
LIST knowledge = (starting_clue),choice1,choice2

VAR actions_taken = 0
VAR max_actions_per_ch = 3

VAR chapter = 1
LIST loc = local_template,(mayor),(denstist),(fortune_teller),city_hall,psychic_emporium //(city_hall),market_place,fortune_teller_emporium,medical_street

->root
===root===
Day{chapter}
->discription->
{loc ? local_template:
    +[generic menu template] -> menu_template
}
{loc ? mayor:
    +[Mayor] -> mayor_knot
}
{loc ? denstist:
    +[denstist] -> denstist_knot
}
{loc ? denstist:
    +[fortune_teller] -> fortune_teller_knot
}
{loc ? denstist:
    +[City Hall] -> fortune_teller_knot
}
{loc ? city_hall:
    +[City Hall] ->city_hall_knot
}
{loc ? psychic_emporium: 
    +[psychic_emporium] ->psychic_emporium_knot
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
    -1:  You check documents provided by Mayor. Newspaper clipping that mention the recent abductions. It talks about possible doings of an “organization” called (name of cult).  There is a photograph of a syringe and scalpel. Photograph notes it was taken in medical street. It’s in your best interest to check out that location. (another doc that has something to do with the fortune teller)
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