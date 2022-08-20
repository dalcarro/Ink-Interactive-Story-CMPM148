 ===menu_template===

->discription->
{chapter:
    -1: <-ch1
    -2: <-ch2
    -3: <-ch3
}
+[travel elsewhere] ->root

- ->menu_template

=ch1

+[char_template] ->mark_of_cain_knot(->menu_template)

//+[storylet] ->storylet

- ->menu_template

=ch2

*[storylet] ->mark_of_cain_knot(->menu_template)

//+[storylet] ->storylet

- ->menu_template

=ch3

//+[char_template] ->char_menu_template(->local_menu_template)

//+[storylet] ->storylet

- ->menu_template

=discription
{chapter:
    -1: ch1 location/character description
    -2: ch2 location/character description 
    -3: ch3 location/character description
}
- ->->


