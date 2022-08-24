===cycle_fortune_teller_emporium===
I’m trying to get a chance to sneak into the Emporium when the teller isn’t watching, but she hasn’t left the parlor yet. I’m beginning to think she lives in there. 

~iterator = 0
->return_stitch
=return_stitch


+[Wait.] Nothing happens, but I know she is in there. 

*[Leave] As much as I would like to look around that shop, it’s almost as if she doesn’t want anybody getting inside. I can’t keep wasting time out here, I should leave. 
    ~iterator++
   

- {iterator == 1:
       And with that, I left the parlor. I suppose I should carry on with my investigation now.
        ~iterator = 0
        ->->
    -else:
        ->return_stitch
}