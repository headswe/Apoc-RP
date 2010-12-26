datum/salvagemaster
	var/list/smallitems = list(/obj/items/junk/can) // easy to find
	var/list/mediumitems = list(/obj/items/food/ration) // kinda easy to find
	var/list/bigitems = list(/obj/items/weapon/bat) // hard to find
datum/salvagemaster/proc/GetItem()
	var/type
	if(prob(10))
		type = pick(bigitems)
		return
	else if(prob(33))
		type = pick(mediumitems)
		return type
	else
		type = pick(smallitems)
		return type

var/datum/salvagemaster/salmaster = new()