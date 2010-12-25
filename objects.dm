obj/objects

obj/objects/door

	icon = 'doors.dmi'
	icon_state = "wdoor_b"
obj/objects/door/wood/broken
	name = "wooden broken door"
	icon_state = "wdoor_b"
obj/objects/door/glass/broken
	name = "glass broken door"
	icon_state = "gdoor_b"

obj/objects/salvage
	name = "pile of junk"
	icon = 'junk.dmi'
	icon_state = "boxes"
	var/amm
obj/objects/salvage/New()
	..()
	amm = rand(1,5)
obj/objects/salvage/attack(mob/user)
	user << "You attempt to salvage from \the [src]..."

obj/objects/fence
	name = "Iron fence"
	opacity = 0
	icon = 'city.dmi'
	icon_state = "ironfence"
	density = 0