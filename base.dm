atom/var/is_saved = 0



atom/verb/examine()
	set src in view(5)
	usr << "This is \a [src]"

atom/proc/IsSaved()
	return is_saved
atom/proc/attack(mob/user)
	return
atom/proc/interact(mob/user)
	return
world/turf = /turf/desert
world/mob = /mob/living/human
atom/DblClick()
	..()
	usr in view(3)
	if(istype(src,/obj/items))
		if(isturf(src.loc))
			src:pickup(usr)
			return
		else
			src.interact(usr)
	else
		src.attack(usr)
		return


atom/proc/showmessage(text)
	for(var/mob/M in viewers())
		M << text