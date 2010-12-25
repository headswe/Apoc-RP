//////////// Items that can be picked up \\\\\\\\\\\\\

obj/items

obj/items/weapon/
	var
		equiped = 0
obj/items/weapon/bat
	name = "baseball bat"
	icon = 'items.dmi'
	icon_state = "bat"
obj/items/proc/pickup(mob/user)
	if(isturf(src.loc))
		src.loc = user
		var/msg = "[user] picks up \a [src]"
		user.showmessage(msg)
obj/items/weapon/interact()
	if(!equiped)
		if(ismob(src.loc))
			world << "updateing icon"
			src.loc:hand = src
			src.loc:hand:equiped = 1
			src.loc:updateicon()
mob/var/obj/items/weapon/hand