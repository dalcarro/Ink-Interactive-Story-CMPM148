 ===dental_clinic===
{chapter == 1 && not ch1: ->ch1->}
{chapter == 2 && not ch2: ->ch2-> }
+[leave] ->root


=ch1
When I walked into the clinic, the bell atop the door rings. The receptionist’s desk seems to be empty. Now where did everybody go?
->cycle_dental_clinic->

->MofC_dental_clinic->
->->

=ch2
//description here


->->