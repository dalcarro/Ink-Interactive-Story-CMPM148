===cycle_prosthetics_clinic====
I walk into the clinic, though I believe the doctor is in the back working away. I suppose I could take a look around the shop. 

These prosthetics are incredibly well made. 

~iterator = 0
->return_stitch
=return_stitch


*[Pick one up] I reach down to touch one of the ones on display, a hand. It fits perfectly into mine as if it were molded from a human hand.

    ~iterator++
- {iterator == 1:
        cycle sussessfully completed
        ~iterator = 0
        ->->
    -else:
        ->return_stitch
}