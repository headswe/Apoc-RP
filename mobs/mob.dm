mob/New()
 ..()
 src.loc = locate(/turf/street)

mob/var/obj/items/weapon/hand
mob/living/human
	icon = 'mobs.dmi'
	icon_state = "human_male"

mob/proc/updateicon()
	return
mob/living/human/updateicon()
	overlays = list()
	if(hand)
		overlays += image('inhand.dmi',hand.icon_state)

mob/living/Stat()
	..()
	stat("Hunger:",hunger)
	stat("Thrist:",thirst)
	statpanel("Backpack",src.contents)
mob/living/
	var/hunger = 100
	var/thirst = 100
mob/var/isdoing = 0
mob/proc/Life()
	return
mob/living/Life()
	hunger--
	hunger = max(0,hunger)
	return
datum/ticker/New()
	tick()
	return
var/datum/ticker/ticker = new()
datum/ticker/proc/tick()
	set background = 1
	sleep(1)
	for(var/mob/M in world)
		M.Life()
	sleep(10)
	tick()
	return