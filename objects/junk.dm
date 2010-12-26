obj/location
	icon = 'markers.dmi'
	icon_state = "X"
	invisibility = 101
obj/location/salvage
	name = "salvage"
obj/location/salvage/proc/CheckSalvage()
	if(locate(/obj/objects/salvage) in src.loc)
		return
	else if(prob(25))
		new/obj/objects/salvage(src.loc)
mob/verb/generatesalvage()
	for(var/obj/location/salvage/T in world)
		T.CheckSalvage()