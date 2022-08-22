===mayor_knot===
VAR mayorprog = 0
->discription->
{chapter:
    -1: <-ch1
    -2: <-ch2
    -3: <-ch3
}
+[travel elsewhere] ->root

- ->mayor_knot

=ch1

*[“Can you tell me about the victim?”] Suggest their distaste for the medical profession, and those who claim they have the credibility to “fix” someone. Says people with that much power can easily manipulate another (ironic, since he is also in power)
    * *[“Do you have the body so I may examine it?”]The mayor looks appalled. 

        “I…? Should I have asked her family to just keep the body?” He shakes his head solemnly, “No, no… the poor girl’s funeral is already over. This happened over a week ago you see…” He straightens his posture, “No family would have their angel lying to rot after that!”

        “Rather careless, but I’ll have to understand.” I said quickly.
        ~mayorprog++


*[“Can you tell me about the crime scene?”] “Sure, but I am afraid I won’t be able to tell you much more than the photographic print I sent you. It really is a fascinating development though, isn’t it…the photographic print I mean!” the Mayor strokes his chin, “You know, science is truly wondrous these days. I am so glad to be part of a time with such advancements in medicine and technology…”

    “Mr. Mayor…” I say calmly, “The crime scene, if you will.”

    “Right, right! Well… it was a gruesome sight, really,” He said, “I think the only person capable of making those gashes and severed limbs would have to be someone with a large blade of sorts. No kitchen knife could have done things like that…”

    “I see. Thank you for the note,” I say.
    ~mayorprog++
    
*[“Can you tell me about any potential leads?”] The Mayor gives me a dry laugh, “Well now detective! If we knew, we wouldn’t have called you!”

    I adjust my hat, “Forgive me sir, I was thinking more along the lines of… do you know anybody who could have had reason to kill the victim?”

    The Mayor seems to think for a while, crossing his arms, “Well… don’t know what could come of it, but… I suspect her family did have some unpaid bills…”

    “Bills?” I echo, “What kind?”

    “I’m afraid I don’t know that much detail, Detective.” the Mayor admits. 

    “Very well.”
    
    ~mayorprog++


//+[storylet] ->storylet
- {mayorprog == 3:
    ->may_ch1_end
    -else:
        ->mayor_knot
}


=may_ch1_end
~mayorprog = 0
The mayor looks at his wristwatch again. 
“Listen, detective, I appreciate your efforts to finding the truth behind this murder, and I would love to stay and help you some more, but I really must get to my next appointment soon…” he says, getting up. 

Shame, I am not finished asking my questions. I can’t let him walk away just yet.

“Wait, Mr. Mayor, just one more thing!” I call out. 

“Very well, detective. Just one more.” He says, stopping at the doorway. 

Hmm… It seems like I will only get to ask one question. I must choose my next words carefully. What would I like to know...?
->mayor_ch1_storylet

=ch2

*[storylet] ->mark_of_cain_knot(->mayor_knot)

//+[storylet] ->storylet

- ->mayor_knot

=ch3

//+[char_template] ->char_mayor_knot(->local_mayor_knot)

//+[storylet] ->storylet



- ->mayor_knot

=discription
{chapter:
    -1: “Detective! You are back so soon, how can I help you?” the Mayor asks.
        “I just wanted to know some details about the case.”
        The Mayor glances at his wristwatch, a rare commodity, but I suppose it’s yet another sign of his status and wealth. He smiles kindly at me, “Of course detective, I have time to spare for your inquiries.”

    -2: ch2 location/character description 
    -3: ch3 location/character description
}
- ->->


