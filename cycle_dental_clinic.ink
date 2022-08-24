===cycle_dental_clinic ===
~iterator = 0
When I walked into the clinic, the bell atop the door rings. The receptionist’s desk seems to be empty. Now where did everybody go?

->return_stitch
=return_stitch


*[Call Out Presence] “Hello? Doctor?”

    From one of the rooms down the hallway, a voice yells out, “Yes, yes. I’ll be right with you. I’m almost done. Just find a seat and make yourself comfortable.” 

    “I’m in no rush, sir. Take your time,” I call out in return. 

    ~iterator++

- {iterator == 1:
        ~iterator = 0
        ->->
    -else:
        ->return_stitch
}