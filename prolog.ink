VAR prolog_tracker = 0

===prolog_knot===
WARNING: The following work contains graphic depictions of violence and gore. Such content may not  be suitable for all audiences.
…
…
… …
I’ve just arrived in this little town. Almost hard to believe a murder happened in this small place. Just almost. I sift through the envelope containing the letter from the Mayor, who summoned me here to investigate the matter. 
->return_stitch
=return_stitch


* [Newspaper Clipping] It’s a recent paper, published just around a week ago in fact. It details the nature of the crime and the public outcry. ‘Juvenile Gruesomely Torn Apart by the Jaws of Evil!’
    ~prolog_tracker++


* [Map of Town]This was the layout of the town I was sent by the Mayor. City Hall is circled in ink, I suppose that’s where I will find him…At first I was simply keen on knowing how to find my way here, but on closer inspection...
    Oh, how interesting. Despite being so small, this town has a few medical practitioners, a dental clinic... and a prosthetist! And in the corner of town, a small shop that appears to be a fortune teller’s lodgings. These might be worth visiting... 
    ~prolog_tracker++


* [Photo Of victim]A small cutout of the crime has been tucked away in the envelope, folded down the middle. Opening it up, I lay my eyes on the scene of the crime yet again. A disposed body, or parts of it. There's cuts all over the victim and her arms and legs aren't connected to her body anymore. If I have to guess, she's no older than twenty, but then again, I can't tell much from a photo.
    It could just be the work of some deranged killer, but something feels afoot…
    ~prolog_tracker++

* {prolog_tracker == 3} [Continue heading through town] ->linear_track


- ->return_stitch

===linear_track===
That’s all I have to work with, but it’s more than plenty for a detective. I suppose I should find the Mayor and tell him of my arrival.

*[GoToCityHall]I arrive in the grandiose building that the Mayor has told me to meet him at. 

- It’s a glorious sight obviously, but I can hardly imagine there weren’t some poor choices made when looking at the state the rest of the town is in. I suppose he is the man paying me for my work so it wouldn’t be good to judge him that harshly.
    ->may_office_prolog
 
 ===may_office_prolog===
 *[Enter the building] Upon entering the edifice, I can see the Mayor’s office clearly marked by its over-extravagant door frame, lined with soft gold painted wreaths, although more obviously, the placard in the middle of the door gives it away much quicker. 
 
 - I turn the doorknob and open the exquisite door to see… a very different interior. Papers are strewn everywhere, and there’s file folders open, stacked upon each other. There’s a sudden rustle of paper as the Mayor clambers out from behind his desk and rushes to greet you. 
        ->chat_with_mayor_prolog
        
===chat_with_mayor_prolog===
*[“Hello, Mr. Mayor.”]His mouth breaks into a wide smile, though I can see the weary look in his eyes. He’s probably had some sleepless nights regarding the murder. 

- “Ah! Our detective!” He says heartily, offering his hand out in a greeting. I shake, arguably curtly, but now isn’t the time for salutations.  I hold the envelope out for him to see. 

“I’ve received your notes,” I say, “I will take my leave now to investigate the matter. I simply wanted to inform you that I had arrived.”

The mayor beams again, “I’m glad your travels were safe and sound. I expect you’ll have an answer to this… troubling incident soon? Shall our town’s residents have an answer within a week?”

I tuck the envelope back into my coat pocket, “Mr. Mayor… with all due respect, I would have hoped you knew the caliber of the detective that you hired. Two days is enough.”
->root