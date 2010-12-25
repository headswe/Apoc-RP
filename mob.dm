mob/New()
 ..()
 src.loc = locate(/turf/street)


mob/living/human
	icon = 'mobs.dmi'
	icon_state = "human_male"

mob/living/proc/updateicon()
	return
mob/living/human/updateicon()
	overlays = list()
	if(hand)
		overlays += image('inhand.dmi',hand.icon_state)

mob/living/Stat()
	..()
	statpanel("inventory",src.contents)

