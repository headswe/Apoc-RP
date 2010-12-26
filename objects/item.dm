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
obj/items/weapon/interact(mob/user)
	if(!equiped)
		if(user && user == src.loc)
			user.showmessage("[user] equips \the [src]")
			user.hand = src
			user.hand:equiped = 1
			user.updateicon()
	else if(user.hand == src)
		if(user && user == src.loc)
			user.showmessage("[user] puts \the [src] into his backpack")
			user.hand = src
			user.hand:equiped = 1
			user.updateicon()


obj/items/food
	icon = 'food.dmi'
	var/foodworth = 0
	var/leftover
obj/items/food/ration
	name = "ration"
	icon = 'food.dmi'
	icon_state = "ration"
	foodworth = 10
	leftover = /obj/items/junk/can
obj/items/food/interact(mob/living/user)
	if(user.hunger)
		user.hunger += foodworth
		user.showmessage("[user] pulls forward \a [src] and gobbles it up")
		if(leftover)
			new leftover(user)
		del(src)

obj/items/junk
	icon = 'junk.dmi'
obj/items/junk/can
	name = "empty can"
	icon_state = "emptycan"