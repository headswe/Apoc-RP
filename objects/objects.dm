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
	if(user.isdoing)
		user << "You are already doing something else"
		return
	user << "You attempt to salvage from \the [src]..."
	user.isdoing = 1
	sleep(15)
	user.isdoing = 0
	if(prob(49) && amm)
		var/type = salmaster.GetItem()
		if(!type)
			return
		var/obj/items/A = new type (user)
		if(!A)
			return
		showmessage("[user] finds \a [A] in \the [src]")
		amm--
	else
		user << "You find nothing."
obj/objects/fence
	name = "Iron fence"
	opacity = 0
	icon = 'city.dmi'
	icon_state = "ironfence"
	density = 1

