===mayor_knot===
{chapter == 1 && not ch1: ->ch1->}
{chapter == 2 && not ch2: ->ch2-> }
+[leave] ->root


=ch1
“Detective! You are back so soon, how can I help you?” the Mayor asks.
        “I just wanted to know some details about the case.”
        The Mayor glances at his wristwatch, a rare commodity, but I suppose it’s yet another sign of his status and wealth. He smiles kindly at me, “Of course detective, I have time to spare for your inquiries.”
->cycle_mayor->

->MofC_mayor->

->->

=ch2
//description here
->MofC_mayor_ch2->

->->


