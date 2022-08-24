===cycle_dentist===
When I walked into the clinic, the bell atop the door rings. The receptionist’s desk seems to be empty. Now where did everybody go?

~iterator = 0
->return_stitch
=return_stitch


*[“Can you tell me about the victim?”] “Cordelia, wasn’t it? Let me think. She’s been to my clinic quite a few times. I’d say she was a brash one, that girl. Not very ladylike if you ask me. Though I could say the same about most of them these days,” He says, shaking his head.
    ~iterator++
    **[“Can I ask how you came about this supposition?”]“Supposition? Young man, there’s no supposing if I have lived it myself. She comes into my workplace, asks me to help her, then proceeds to tell me how I could do my job better?” he huffs.

        “Ah, but is it so bad …” I start, realizing that I just might offend him, “To listen to suggestions?”

        “The things she says are not what you would call suggestions. They’re patronizing instructions that hold no credibility over my own practice and education,” he says, taking great offense to what I just asked. “Despite the fact that I work on peoples mouths, It is not in my ability to control what spews out of it.”

        “My apologies,” I say earnestly. Seems I’ve stepped out of line a bit.

*[“Can you tell me a bit about your work?”] “If it pleases you. But what exactly do you wish to know about my work?” he asks. “Perhaps something besides the obvious factor? Teeth?” he asks wryly. 

“You could briefly tell me what a typical appointment looks like.”

“Alright then. I start by asking about what it is that ails them. Then I check their teeth and their gums. I tell them what it is I see and what needs to be done, and I do whatever it is that needs to be done. The details vary with each case,” he says. “Does that answer your question?”
    **[“Do you mind if I could have a look at your tools”]He narrows his eyes at me but proceeds to lead me into a room. As I enter, I notice how much cleaner and brighter this room was. Each of my senses noted how sterile it was.

        “This here is my workspace,” he gestures a hand around the room, then points to a table. “My tools are on that table. I make sure they’re disinfected before use. I know it looks scary, but I just want to remind you that I am a dentist, and these tools are necessary for performing surgery if needed.”

        “Do you mind if I have a look at them?”

        “You already are, so go on ahead. Do what you must,” he says, somewhat begrudgingly

        “And these bottles are a sort of anesthetic, yes?”

        He nods, “Indeed. It puts the patients to sleep temporarily during procedures.” 

        “I see,” I say in response.

        Nothing seems out of the ordinary for a dentist to have.
        ~iterator++
*[“Can you tell me anything worth knowing about the victim?”]“Something worth knowing…” he ponders this for a moment. “Oh she was always going on about magic and the stars…Always telling me it was far more enchanting than my work rooted in science! I see those kids hanging around that Fortune Teller’s place all the time, it’s got to be her influence!”

    “Perhaps they just want to ask about love, or… whatever else teenagers occupy their time with,” I suggest.

    “I suppose there’s that, but there can’t be any good in having these teenagers be fed these… devilish ideas about dark magic and whatnot. It’s more sensible to educate them on the matters that can help make something of their lives! As a man of science, these delusional fantasies have nothing to offer in regards to their future.”

	Sounds like speculation, but perhaps it’s something worth noting. 
    ~iterator++

- {iterator == 3:
        A bell sounds as someone enters through the main door. The dentist looks past me in the direction of the door, my gaze following. A woman stands by the entrance, waiting to be instructed on what to do.  “Now I must implore you, detective, to make haste as I do have patients to attend to today.

        Hmm… It seems like I will only get to ask one question. I must choose my next words carefully. What would I like to know...?
        ~iterator = 0
        ->->
    -else:
        ->return_stitch
}