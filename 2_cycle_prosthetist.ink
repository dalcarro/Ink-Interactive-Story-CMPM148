===cycle_prosthetist===
I give him a wry smile, “Not yet, sir. I would assume you are aware of the murder that happened recently. Of the girl?”

“Oh yes! How tragic that ‘twas!” He interrupts, “No fun in losin’ your limbs after you’re dead!”

“Right, I’ve been hired by the Mayor to figure out what happened that day, so I’ll be asking some questions if you don’t mind…”

~iterator = 0
->return_stitch
=return_stitch


*[“Can you tell me about the victim?”] “Oh, I shall try!” he says, swinging his prosthetic arm around the elbow joint and propping his chin up, “Let me see… She had all of her limbs!”

    “B…Besides that, doctor…”

    “Of course, of course…” the Prosthetist brought a wooden finger to his lips, “Well… I would never tell a young maiden this, but…”
    **["But...?"]“She wore this awful pendant ‘round her neck!”

        “Awful, how so?” I ask, confused. 
        The Prosthetist’s eyebrows furrowed, and he says, “Detective! I am a man of art and craft! I would know fine art from that rubbish on string. ‘Twas nothin’ more than tinted glass polished to look like a gemstone. Whoever sold it to her obviously has no love for true artists like us!”

        I didn’t expect him to get so heated over a necklace, but I suppose that information may be useful.
        ~iterator++

*[“Is there anything familiar about this photograph to you?”] “Hmm…” he takes the photo with his good hand, “Let me have a look-see…”

    He stares at it for a while, then turns to me.

    “Well, I can’t say for sure I’m the type to be gettin’ out much…” he starts, “But I’ll be damned, I’ve never visited such a place in town! Looks to me like it’s on the far edge of our borders. And I can’t see that tacky necklace on her anymore.”

    “I see.” I note this information down, it could be important.
    ~iterator++
    
*[“Tell me about your profession.”] His eyes light up with joy and I’m almost concerned. 

    “Well, I’ll be!” the Prosthetist  says, “Nobody’s ever wanted to talk the talk about my work!”

    I can’t imagine why… I think to myself.

    “Well, me Ma and Pa and the whole lot of ‘em are all woodworkers. So of course they swept me up into it with ‘em! But woodworkin’ ain't an easy craft I’ll tell ya… all sorts of bumps and bruises I’d end up with! Eventually one of them saws chopped me leg and me arm clean off!”

    “Oh dear…”

    “Ahh, but not to worry! These fine doctors patched me up real quick and even gave me some medicine! Ant-ee-buddies, they called ‘em!”

    He swings his leg back up again, “But then all I had was a couple of stumps! I still knew how to woodwork! Still knew how to use all our tools! But… Ma and Pa wouldn’t have it. They said they didn’t need me ‘round the shop anymore ‘cause I couldn’t hold a saw right.”

    “And then you made prosthetics for yourself!?” I gasp, truly amazed at the feat.

    “Course I did!” He laughs, “Wouldn’t be a woodworker if I couldn’t, now would I?”

    “I… I suppose not…”
    ~iterator++

- {iterator == 3:
        cycle sussessfully completed
        ~iterator = 0
        ->->
    -else:
        ->return_stitch
}