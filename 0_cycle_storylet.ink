===cycle_storylet===
~iterator = 0
->return_stitch
=return_stitch


*[choice1] test 1 cycle == {iterator}
    ~iterator++
*[choice2] test 2 cycle == {iterator}
    ~iterator++
*[choice3] test 3 cycle == {iterator}
    ~iterator++

- {iterator == 3:
        cycle sussessfully completed
        ~iterator = 0
        ->->
    -else:
        ->return_stitch
}