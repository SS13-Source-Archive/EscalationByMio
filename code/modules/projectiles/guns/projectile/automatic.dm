/obj/item/weapon/gun/projectile/automatic //Hopefully someone will find a way to make these fire in bursts or something. --Superxpdude
	name = "prototype SMG"
	desc = "A protoype lightweight, fast firing gun. Uses 9mm rounds."
	icon_state = "saber"	//ugly
	w_class = ITEM_SIZE_NORMAL
	load_method = SPEEDLOADER //yup. until someone sprites a magazine for it.
	max_shells = 22
	caliber = "9mm"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/c9mm
	multi_aim = 1
	burst_delay = 2
	//automatic = 0
	//machine pistol, easier to one-hand with
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=1, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=2, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/machine_pistol
	name = ".45 machine pistol"
	desc = "An uncommon machine pistol, sometimes refered to as an 'uzi' by the backwater spacers it is often associated with, though its origins have been lost to time. Uses .45 rounds."
	icon_state = "mpistolen"
	item_state = "wt550"
	w_class = ITEM_SIZE_NORMAL
	load_method = MAGAZINE
	caliber = ".45"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2, TECH_ILLEGAL = 3)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/c45
	magazine_type = /obj/item/ammo_magazine/c45uzi
	allowed_magazines = /obj/item/ammo_magazine/c45uzi //more damage compared to the wt550, smaller mag size

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=1, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=2, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/mini_uzi/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "mpistolen"
	else
		icon_state = "mpistolen-empty"

/obj/item/weapon/gun/projectile/automatic/c20r
	name = "submachine gun"
	desc = "The C-20r is a lightweight and rapid firing SMG, for when you REALLY need someone dead. Uses 10mm rounds. Has a 'Scarborough Arms - Per falcis, per pravitas' buttstamp."
	icon_state = "c20r"
	item_state = "c20r"
	w_class = ITEM_SIZE_LARGE
	force = 10
	caliber = "10mm"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2, TECH_ILLEGAL = 8)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/a10mm
	allowed_magazines = /obj/item/ammo_magazine/a10mm
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	one_hand_penalty = 1

	//SMG
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=2, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=3, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=4, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/c20r/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "c20r-[round(ammo_magazine.stored_ammo.len,4)]"
	else
		icon_state = "c20r"
	return

/obj/item/weapon/gun/projectile/automatic/sts35
	name = "assault rifle"
	desc = "The rugged STS-35 is a durable automatic weapon of a make popular on the frontier worlds. The serial number has been scratched off. Uses 7.62mm rounds."
	icon_state = "arifle"
	item_state = null
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = "a762"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_ILLEGAL = 5)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/c762
	allowed_magazines = /obj/item/ammo_magazine/c762
	one_hand_penalty = 3
	wielded_item_state = "arifle-wielded"

	//Assault rifle, burst fire degrades quicker than SMG, worse one-handing penalty, slightly increased move delay
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=4, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=6,    one_hand_penalty=5, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=6,    one_hand_penalty=6, burst_accuracy=list(0,-1,-2,-3,-3), dispersion=list(0.6, 1.0, 1.2, 1.2, 1.5)),
		)

/obj/item/weapon/gun/projectile/automatic/sts35/update_icon()
	icon_state = (ammo_magazine)? "arifle" : "arifle-empty"
	wielded_item_state = (ammo_magazine)? "arifle-wielded" : "arifle-wielded-empty"
	..()

/obj/item/weapon/gun/projectile/automatic/wt550
	name = "9mm machine pistol"
	desc = "The W-T 550 Saber is a cheap self-defense weapon, mass-produced by Ward-Takahashi for paramilitary and private use. Uses 9mm rounds."
	icon_state = "wt550"
	item_state = "wt550"
	w_class = ITEM_SIZE_NORMAL
	caliber = "9mm"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/c9mm/rubber
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/mc9mmt/rubber
	allowed_magazines = /obj/item/ammo_magazine/mc9mmt

	//machine pistol, like SMG but easier to one-hand with
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=1, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=2, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/wt550/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "wt550-[round(ammo_magazine.stored_ammo.len,4)]"
	else
		icon_state = "wt550"
	return

/obj/item/weapon/gun/projectile/automatic/z8
	name = "bullpup assault rifle"
	desc = "The Z8 Bulldog is an older model bullpup carbine, made by the now defunct Zendai Foundries. Uses armor piercing 5.56mm rounds. Makes you feel like a space marine when you hold it."
	icon_state = "carbine"
	item_state = "z8carbine"
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = "a556"
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 3)
	ammo_type = /obj/item/ammo_casing/a556
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/a556
	allowed_magazines = /obj/item/ammo_magazine/a556
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	one_hand_penalty = 5
	burst_delay = 4
	wielded_item_state = "z8carbine-wielded"
	//would have one_hand_penalty=4,5 but the added weight of a grenade launcher makes one-handing even harder
	firemodes = list(
		list(mode_name="semiauto",       burst=1,    fire_delay=0,    move_delay=null, use_launcher=null, one_hand_penalty=5, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3,    fire_delay=null, move_delay=6,    use_launcher=null, one_hand_penalty=6, burst_accuracy=list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    one_hand_penalty=5, burst_accuracy=null, dispersion=null)
		)

	var/use_launcher = 0
	var/obj/item/weapon/gun/launcher/grenade/underslung/launcher

/obj/item/weapon/gun/projectile/automatic/z8/New()
	..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/z8/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/weapon/grenade)))
		launcher.load(I, user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/z8/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		launcher.unload(user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/z8/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //switch back automatically
	else
		..()

/obj/item/weapon/gun/projectile/automatic/z8/update_icon()
	..()
	if(ammo_magazine)
		if(ammo_magazine.stored_ammo.len)
			icon_state = "carbine-loaded"
		else
			icon_state = "carbine-empty"
	else
		icon_state = "carbine"
	return

/obj/item/weapon/gun/projectile/automatic/z8/examine(mob/user)
	. = ..()
	if(launcher.chambered)
		to_chat(user, "\The [launcher] has \a [launcher.chambered] loaded.")
	else
		to_chat(user, "\The [launcher] is empty.")

/obj/item/weapon/gun/projectile/automatic/l6_saw
	name = "light machine gun"
	desc = "A rather traditionally made L6 SAW with a pleasantly lacquered wooden pistol grip. Has 'Aussec Armoury- 2531' engraved on the reciever." //probably should refluff this
	icon_state = "l6closed100"
	item_state = "l6closedmag"
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = 0
	max_shells = 50
	caliber = "a762"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_ILLEGAL = 2)
	slot_flags = 0 //need sprites for SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a762
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/box/a762
	allowed_magazines = list(/obj/item/ammo_magazine/box/a762, /obj/item/ammo_magazine/c762)
	one_hand_penalty = 6

	//LMG, better sustained fire accuracy than assault rifles (comparable to SMG), higer move delay and one-handing penalty
	//No single-shot or 3-round-burst modes since using this weapon should come at a cost to flexibility.
	firemodes = list(
		list(mode_name="short bursts",	burst=5, move_delay=12, one_hand_penalty=8, burst_accuracy = list(0,-1,-1,-2,-2),          dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(mode_name="long bursts",	burst=8, move_delay=15, one_hand_penalty=9, burst_accuracy = list(0,-1,-1,-2,-2,-2,-3,-3), dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	var/cover_open = 0

/obj/item/weapon/gun/projectile/automatic/l6_saw/mag
	magazine_type = /obj/item/ammo_magazine/c762

/obj/item/weapon/gun/projectile/automatic/l6_saw/special_check(mob/user)
	if(cover_open)
		to_chat(user, "<span class='warning'>[src]'s cover is open! Close it before firing!</span>")
		return 0
	return ..()

/obj/item/weapon/gun/projectile/automatic/l6_saw/proc/toggle_cover(mob/user)
	cover_open = !cover_open
	to_chat(user, "<span class='notice'>You [cover_open ? "open" : "close"] [src]'s cover.</span>")
	update_icon()

/obj/item/weapon/gun/projectile/automatic/l6_saw/attack_self(mob/user as mob)
	if(cover_open)
		toggle_cover(user) //close the cover
	else
		return ..() //once closed, behave like normal

/obj/item/weapon/gun/projectile/automatic/l6_saw/attack_hand(mob/user as mob)
	if(!cover_open && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
	else
		return ..() //once open, behave like normal

/obj/item/weapon/gun/projectile/automatic/l6_saw/update_icon()
	if(istype(ammo_magazine, /obj/item/ammo_magazine/box))
		icon_state = "l6[cover_open ? "open" : "closed"][round(ammo_magazine.stored_ammo.len, 25)]"
		item_state = "l6[cover_open ? "open" : "closed"]"
	else if(ammo_magazine)
		icon_state = "l6[cover_open ? "open" : "closed"]mag"
		item_state = "l6[cover_open ? "open" : "closed"]mag"
	else
		icon_state = "l6[cover_open ? "open" : "closed"]-empty"
		item_state = "l6[cover_open ? "open" : "closed"]-empty"
	..()

/obj/item/weapon/gun/projectile/automatic/l6_saw/load_ammo(var/obj/item/A, mob/user)
	if(!cover_open)
		to_chat(user, "<span class='warning'>You need to open the cover to load that into [src].</span>")
		return
	..()

/obj/item/weapon/gun/projectile/automatic/l6_saw/unload_ammo(mob/user, var/allow_dump=1)
	if(!cover_open)
		to_chat(user, "<span class='warning'>You need to open the cover to unload [src].</span>")
		return
	..()

/obj/item/weapon/gun/projectile/automatic/ak74
	name = "AK-74"
	desc = "A standard-issue Soviet Army combat rifle."
	icon_state = "ak74"
	item_state = "ak74"
	w_class = 5
	load_method = MAGAZINE
	caliber = "545x39"
	slot_flags = SLOT_BACK_GUN
	ammo_type = /obj/item/ammo_casing/a545x39
	allowed_magazines = list(/obj/item/ammo_magazine/c545x39m, /obj/item/ammo_magazine/c545x39b)
	magazine_type = null
	one_hand_penalty = 3
	accuracy = 2
	fire_delay = 2
	zoom_ammount = 10
	wielded_item_state = "ak74-wielded"
	fire_sound = 'sound/weapons/gunshot/ak74.ogg'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.ogg'

	var/obj/item/weapon/material/knife/bayonet/sa/knife = FALSE

	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=2,    move_delay=null, one_hand_penalty=4, burst_accuracy=null,              dispersion=null,                          automatic = 0),
		list(mode_name="short bursts", burst=3, fire_delay=null, move_delay=3,    one_hand_penalty=5, burst_accuracy=list(1,1,0),       dispersion=list(0.0, 0.3, 0.6),           automatic = 0),
		list(mode_name="long bursts",  burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=6, burst_accuracy=list(1,1,0,-1,-2), dispersion=list(0.3, 0.3, 0.6, 1.2, 1.5), automatic = 0),
		list(mode_name="automatic",    burst=1, fire_delay=0.7,    move_delay=3, one_hand_penalty=10, burst_accuracy=list(1,1,0),       dispersion=list(0.0,0.3, 0.6),            automatic = 0.7),
		)

/obj/item/weapon/gun/projectile/automatic/ak74/New()
	..()
	src.verbs -= /obj/item/weapon/gun/projectile/automatic/ak74/verb/remove_bayonet

/obj/item/weapon/gun/projectile/automatic/ak74/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W, /obj/item/weapon/material/knife/bayonet/sa))
		knife = W
		user.drop_item()
		W.loc = src
		src.attack_verb = W.attack_verb
		src.sharp += W.sharp
		src.force += W.force
		to_chat(user, "<span class='notice'>You attach [knife.name] to \the [src].</span>")
		src.verbs += /obj/item/weapon/gun/projectile/automatic/ak74/verb/remove_bayonet
		update_icon()
	..()

/obj/item/weapon/gun/projectile/automatic/ak74/update_icon()
	..()
	if(knife)
		var/image/I = image('icons/escalation/obj/bayonets.dmi', src, "bayonet-sa")
		I.pixel_x += 10
		I.pixel_y += 10
		overlays += I
	else
		overlays.Cut()

	if(ammo_magazine)
		icon_state = "ak74"
		item_state = "ak74"
	else
		icon_state = "ak74-empty"
		item_state = "ak74-empty"

/obj/item/weapon/gun/projectile/automatic/ak74/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)


/obj/item/weapon/gun/projectile/automatic/ak74/verb/remove_bayonet(mob/user)
	set name = "Remove bayonet"
	set category = "Object"
	set popup_menu = 1
	set src in usr

	if(knife)
		knife.loc = usr
		usr.put_in_hands(knife)
		knife = FALSE
		src.attack_verb = initial(attack_verb)
		src.sharp = initial(sharp)
		src.force = initial(force)
		to_chat(user, "<span class='notice'>You deattach the bayonet from \the [src].</span>")
		src.verbs -= /obj/item/weapon/gun/projectile/automatic/ak74/verb/remove_bayonet
		update_icon()

/obj/item/weapon/gun/projectile/automatic/ak74gl
	name = "AK-74"
	desc = "A standard-issue Soviet Army combat rifle with a GP-25 launcher attached to it."
	icon_state = "ak74gl"
	item_state = "ak74gl"
	w_class = 5
	load_method = MAGAZINE
	caliber = "545x39"
	slot_flags = SLOT_BACK_GUN
	ammo_type = /obj/item/ammo_casing/a545x39
	allowed_magazines = list(/obj/item/ammo_magazine/c545x39m, /obj/item/ammo_magazine/c545x39b)
	magazine_type = null
	one_hand_penalty = 3
	accuracy = 2
	fire_delay = 2
	zoom_ammount = 10
	wielded_item_state = "ak74gl-wielded"
	fire_sound = 'sound/weapons/gunshot/ak74.ogg'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.ogg'

	var/use_launcher = FALSE
	var/obj/item/weapon/gun/launcher/grenade/underslung/gp25/launcher

	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=2,    move_delay=null, one_hand_penalty=4, burst_accuracy=null,              dispersion=null, automatic = 0),
		list(mode_name="short bursts", burst=3, fire_delay=null, move_delay=3,    one_hand_penalty=5, burst_accuracy=list(1,1,0),       dispersion=list(0.0, 0.3, 0.6), automatic = 0),
		list(mode_name="long bursts",  burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=6, burst_accuracy=list(1,1,0,-1,-2), dispersion=list(0.3, 0.3, 0.6, 1.2, 1.5), automatic = 0),
		list(mode_name="automatic",    burst=1, fire_delay=0.7,  move_delay=3,    one_hand_penalty=5, burst_accuracy=list(1,1,0),       dispersion=list(0.0, 0.3, 0.6), automatic = 0.7),
		)

/obj/item/weapon/gun/projectile/automatic/ak74gl/New()
	..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/ak74gl/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/weapon/grenade)))//load check it for it's type
		launcher.load(I, user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/ak74gl/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		launcher.unload(user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/ak74gl/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //switch back automatically
	else
		..()

/obj/item/weapon/gun/projectile/automatic/ak74gl/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "ak74gl"
	else
		icon_state = "ak74gl-empty"

/obj/item/weapon/gun/projectile/automatic/ak74gl/verb/set_gp(mob/user)
	set name = "Granade launcher"
	set category = "Object"
	set src in usr

	if(launcher)
		use_launcher = !use_launcher
		to_chat(user, "<span class='notice'>You [use_launcher ? "prepare [launcher.name] to fire." : " take your gun back"]</span>")

/obj/item/weapon/gun/projectile/automatic/ak74gl/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)

/obj/item/weapon/gun/projectile/automatic/aks74
	name = "AKS-74"
	desc = "A lighter version of the standard-issue Soviet Army combat rifle."
	icon_state = "aks74"
	item_state = "ak"
	w_class = 4
	load_method = MAGAZINE
	caliber = "545x39"
	slot_flags = SLOT_BACK_GUN
	ammo_type = /obj/item/ammo_casing/a545x39
	allowed_magazines = /obj/item/ammo_magazine/c545x39m
	magazine_type = /obj/item/ammo_magazine/c545x39m
	one_hand_penalty = 2
	accuracy = 1
	fire_delay = 2
	zoom_ammount = 10
	wielded_item_state = "ak-wielded"
	fire_sound = 'sound/weapons/gunshot/ak74.ogg'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.ogg'

	var/obj/item/weapon/material/knife/bayonet/sa/knife = FALSE

	firemodes = list(
		list(mode_name="semiauto",      burst=1, fire_delay=2,    move_delay=null, one_hand_penalty=2, burst_accuracy=null,              dispersion=null),
		list(mode_name="short bursts",  burst=3, fire_delay=null, move_delay=1,    one_hand_penalty=3, burst_accuracy=list(1,0,-1),      dispersion=list(0.3, 0.6, 0.6)),
		list(mode_name="long bursts",   burst=5, fire_delay=null, move_delay=2,    one_hand_penalty=4, burst_accuracy=list(1,0,0,-1,-2), dispersion=list(0.3, 0.6, 0.6, 1.2, 1.5)),
		list(mode_name="automatic",    burst=1, fire_delay=0.7,  move_delay=3,    one_hand_penalty=5, burst_accuracy=list(1,1,0),       dispersion=list(0.0, 0.3, 0.6), automatic = 0.7),
		)

/obj/item/weapon/gun/projectile/automatic/ak74/New()
	..()
	src.verbs -= /obj/item/weapon/gun/projectile/automatic/aks74/verb/remove_bayonet

/obj/item/weapon/gun/projectile/automatic/aks74/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W, /obj/item/weapon/material/knife/bayonet/sa))
		knife = W
		user.drop_item()
		W.loc = src
		src.attack_verb = W.attack_verb
		src.sharp += W.sharp
		src.force += W.force
		to_chat(user, "<span class='notice'>You attach [knife.name] to \the [src].</span>")
		src.verbs += /obj/item/weapon/gun/projectile/automatic/aks74/verb/remove_bayonet
		update_icon()
	..()

/obj/item/weapon/gun/projectile/automatic/aks74/update_icon()
	..()

	if(knife)
		var/image/I = image('icons/escalation/obj/bayonets.dmi', src, "bayonet-sa")
		I.pixel_x += 5
		I.pixel_y += 5
		overlays += I
	else
		overlays.Cut()

	if(ammo_magazine)
		icon_state = "aks74"
	else
		icon_state = "aks74-empty"

/obj/item/weapon/gun/projectile/automatic/aks74/verb/remove_bayonet(mob/user)
	set name = "Remove bayonet"
	set category = "Object"
	set popup_menu = 1

	if(knife)
		knife.loc = usr
		usr.put_in_hands(knife)
		knife = FALSE
		src.attack_verb = initial(attack_verb)
		src.sharp = initial(sharp)
		src.force = initial(force)
		to_chat(user, "<span class='notice'>You deattach the bayonet from \the [src].</span>")
		src.verbs -= /obj/item/weapon/gun/projectile/automatic/aks74/verb/remove_bayonet
		update_icon()

/obj/item/weapon/gun/projectile/automatic/aks74/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)

/obj/item/weapon/gun/projectile/automatic/m16a2
	name = "M16A2"
	desc = "A standard-issue USMC combat rifle."
	icon_state = "m16a2"
	item_state = "m16"
	w_class = 5
	load_method = MAGAZINE
	caliber = "556x45"
	slot_flags = SLOT_BACK_GUN
	ammo_type = /obj/item/ammo_casing/a556x45
	allowed_magazines = /obj/item/ammo_magazine/c556x45m
	magazine_type = null
	one_hand_penalty = 4
	accuracy = 2
	fire_delay = 3
	zoom_ammount = 10
	wielded_item_state = "m16-wielded"
	fire_sound = 'sound/weapons/gunshot/m16.ogg'
	unload_sound = 'sound/weapons/gunporn/m16_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/m16_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/m16_chargeback.ogg'

	var/obj/item/weapon/material/knife/bayonet/usmc/knife = FALSE

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=4, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=3,    one_hand_penalty=5, burst_accuracy=list(2,1,1),       dispersion=list(0.0, 0.3, 0.3)),
		)

/obj/item/weapon/gun/projectile/automatic/m16a2/New()
	..()
	src.verbs -= /obj/item/weapon/gun/projectile/automatic/m16a2/verb/remove_bayonet

/obj/item/weapon/gun/projectile/automatic/m16a2/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W, /obj/item/weapon/material/knife/bayonet/usmc))
		knife = W
		user.drop_item()
		W.loc = src
		src.attack_verb = W.attack_verb
		src.sharp += W.sharp
		src.force += W.force
		to_chat(user, "<span class='notice'>You attach [knife.name] to \the [src].</span>")
		src.verbs += /obj/item/weapon/gun/projectile/automatic/m16a2/verb/remove_bayonet
		update_icon()
	..()

/obj/item/weapon/gun/projectile/automatic/m16a2/update_icon()
	..()

	if(knife)
		var/image/I = image('icons/escalation/obj/bayonets.dmi', src, "bayonet-usmc")
		I.pixel_x += 5
		I.pixel_y += 5
		overlays += I
	else
		overlays.Cut()

	if(ammo_magazine)
		icon_state = "m16a2"
	else
		icon_state = "m16a2-empty"

/obj/item/weapon/gun/projectile/automatic/m16a2/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)

/obj/item/weapon/gun/projectile/automatic/m16a2/verb/remove_bayonet(mob/user)
	set name = "Remove bayonet"
	set category = "Object"
	set popup_menu = 1
	set src in usr

	if(knife)
		knife.loc = usr
		usr.put_in_hands(knife)
		knife = FALSE
		src.attack_verb = initial(attack_verb)
		src.sharp = initial(sharp)
		src.force = initial(force)
		to_chat(user, "<span class='notice'>You remove the bayonet from \the [src].</span>")
		src.verbs -= /obj/item/weapon/gun/projectile/automatic/m16a2/verb/remove_bayonet
		update_icon()

/obj/item/weapon/gun/projectile/automatic/coltmodel733
	name = "Colt Model 733"
	desc = "A standard-issue USMC carbine."
	icon_state = "coltmodel733"
	item_state = "m16"
	w_class = 4
	load_method = MAGAZINE
	caliber = "556x45"
	slot_flags = SLOT_BACK_GUN
	magazine_type = null
	ammo_type = /obj/item/ammo_casing/a556x45
	allowed_magazines = /obj/item/ammo_magazine/c556x45m
	one_hand_penalty = 2
	accuracy = 1
	fire_delay = 2
	wielded_item_state = "m16-wielded"
	fire_sound = 'sound/weapons/gunshot/m16.ogg'
	unload_sound = 'sound/weapons/gunporn/m16_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/m16_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/m16_chargeback.ogg'

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=2, burst_accuracy=null, dispersion=null),
		list(mode_name="short bursts", burst=3, fire_delay=null, move_delay=1,    one_hand_penalty=3, burst_accuracy=list(1,0,-1),       dispersion=list(0.3, 0.6, 0.6)),
		list(mode_name="long bursts",   burst=5, fire_delay=null, move_delay=2,    one_hand_penalty=4, burst_accuracy=list(1,0,0,-1,-2), dispersion=list(0.3, 0.6, 0.6, 1.2, 1.5)),
		)

/obj/item/weapon/gun/projectile/automatic/coltmodel733/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "coltmodel733"
	else
		icon_state = "coltmodel733-empty"

//heavily ak-74 version, have a little bit faster bullets and larger barrel - ~750m\sec against of ak's 715m\sec
//have bipods on bayonet's slot
/obj/item/weapon/gun/projectile/automatic/rpk74
	name = "RPK-74"
	desc = "A standard-issue Soviet Army squad support weapon."
	icon_state = "rpk"
	item_state = "rpk"
	slot_flags = SLOT_BACK_GUN
	w_class = 5
	force = 10
	max_shells = 45
	caliber = "545x39"
	ammo_type = /obj/item/ammo_casing/a545x39
	load_method = MAGAZINE
	magazine_type = null
	allowed_magazines = list(/obj/item/ammo_magazine/c545x39m, /obj/item/ammo_magazine/c545x39b)
	one_hand_penalty = 6
	accuracy = 3
	wielded_item_state = "rpk-wielded"
	zoom_ammount = 10
	fire_sound = 'sound/weapons/gunshot/rpk47.ogg'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.ogg'


	firemodes = list(
		list(mode_name="semiauto",      burst=1, fire_delay=2,    move_delay=null, one_hand_penalty=2, burst_accuracy=null, dispersion=null),
		list(mode_name="short bursts",  burst=5, move_delay=8, one_hand_penalty=8, burst_accuracy = list(3,2,2,1,0),          dispersion = list(0.3, 0.3, 0.6, 1.0, 1.2)),
		list(mode_name="long bursts",   burst=8, move_delay=10, one_hand_penalty=9, burst_accuracy = list(2,2,2,1,0,-1,-2,-3), dispersion = list(0.3, 0.3, 0.6, 1.0, 1.2)),
		list(mode_name="automatic",    burst=1, fire_delay=0.7,  move_delay=3,    one_hand_penalty=5, burst_accuracy=list(1,1,0),       dispersion=list(0.0, 0.3, 0.6), automatic = 0.7),
		)

/obj/item/weapon/gun/projectile/automatic/rpk74/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)

/obj/item/weapon/gun/projectile/automatic/rpk74/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "rpk"
	else
		icon_state = "rpk-empty"

//true kalashnikov's machinegun - standart soviet lmg
//same with bayonet as RPK
/obj/item/weapon/gun/projectile/automatic/pkm
	name = "PKM"
	desc = "A standard-issue Soviet Army general purpose machine gun."
	icon_state = "pkm"
	item_state = "vz59"
	w_class = 5
	force = 15
	slot_flags = SLOT_BACK_GUN
	max_shells = 200
	caliber = "762x54"
	ammo_type = /obj/item/ammo_casing/a762x54
	load_method = MAGAZINE
	magazine_type = null
	allowed_magazines = /obj/item/ammo_magazine/c762x54b
	one_hand_penalty = 9
	zoom_ammount = 10
	wielded_item_state = "vz59-wielded"
	unload_sound = 'sound/weapons/gunporn/m249_boxremove.ogg'
	reload_sound = 'sound/weapons/gunporn/m249_boxinsert.ogg'
	cocked_sound = 'sound/weapons/gunporn/m249_charge.ogg'

	firemodes = list(
		list(mode_name="short bursts",  burst=5, move_delay=12, one_hand_penalty=8, burst_accuracy = list(0,-1,-1,-2,-2),          dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(mode_name="long bursts",   burst=8, move_delay=15, one_hand_penalty=9, burst_accuracy = list(0,-1,-1,-2,-2,-2,-3,-3), dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	var/cover_opened = FALSE


/obj/item/weapon/gun/projectile/automatic/pkm/special_check(mob/user)
	if(cover_opened)
		to_chat(user, "<span class='warning'>[src]'s cover is open! Close it before firing!</span>")
		return FALSE
	return ..()

/obj/item/weapon/gun/projectile/automatic/pkm/proc/toggle_cover(mob/user)
	cover_opened = !cover_opened
	to_chat(user, "<span class='notice'>You [cover_opened ? "open" : "close"] [src]'s cover.</span>")
	update_icon()

/obj/item/weapon/gun/projectile/automatic/pkm/attack_self(mob/user as mob)
	if(cover_opened)
		toggle_cover(user) //close the cover
		playsound(user, 'sound/weapons/gunporn/m249_close.ogg', 100, 1)
	else
		return ..() //once closed, behave like normal

/obj/item/weapon/gun/projectile/automatic/pkm/attack_hand(mob/user as mob)
	if(!cover_opened && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
		playsound(user, 'sound/weapons/gunporn/m249_open.ogg', 100, 1)
	else
		return ..() //once open, behave like normal

/obj/item/weapon/gun/projectile/automatic/pkm/load_ammo(var/obj/item/A, mob/user)
	if(!cover_opened)
		to_chat(user, "<span class='warning'>You need to open the cover to load that into [src].</span>")
		return
	..()

/obj/item/weapon/gun/projectile/automatic/pkm/unload_ammo(mob/user, var/allow_dump=1)
	if(!cover_opened)
		to_chat(user, "<span class='warning'>You need to open the cover to unload [src].</span>")
		return
	..()

/obj/item/weapon/gun/projectile/automatic/pkm/update_icon()
	if(istype(ammo_magazine, /obj/item/ammo_magazine/c762x54b))
		icon_state = "pkm[cover_opened ? "open" : "closed"][round(ammo_magazine.stored_ammo.len, 200)]"
	else
		icon_state = "pkm[cover_opened ? "open" : "closed"]-empty"
	..()

/obj/item/weapon/gun/projectile/automatic/pkm/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)

/obj/item/weapon/gun/projectile/automatic/m60
	name = "M60E1"
	desc = "A standard-issue USMC squad support weapon."
	icon_state = "m60"
	item_state = "m60"
	w_class = 5
	force = 15
	slot_flags = SLOT_BACK_GUN
	max_shells = 200
	caliber = "762x51"
	ammo_type = /obj/item/ammo_casing/a762x51
	load_method = MAGAZINE
	magazine_type = null
	allowed_magazines = /obj/item/ammo_magazine/c762x51b
	one_hand_penalty = 9
	zoom_ammount = 10
	wielded_item_state = "m60-wielded"
	fire_sound = 'sound/weapons/gunshot/m60.ogg'
	unload_sound = 'sound/weapons/gunporn/m249_boxremove.ogg'
	reload_sound = 'sound/weapons/gunporn/m249_boxinsert.ogg'
	cocked_sound = 'sound/weapons/gunporn/m249_charge.ogg'

	firemodes = list(
		list(mode_name="short bursts",  burst=5, move_delay=12, one_hand_penalty=8, burst_accuracy = list(0,-1,-1,-2,-2),          dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(mode_name="long bursts",   burst=8, move_delay=15, one_hand_penalty=9, burst_accuracy = list(0,-1,-1,-2,-2,-2,-3,-3), dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	var/cover_opened = FALSE


/obj/item/weapon/gun/projectile/automatic/m60/special_check(mob/user)
	if(cover_opened)
		to_chat(user, "<span class='warning'>[src]'s cover is open! Close it before firing!</span>")
		return FALSE
	return ..()

/obj/item/weapon/gun/projectile/automatic/m60/proc/toggle_cover(mob/user)
	cover_opened = !cover_opened
	to_chat(user,"<span class='notice'>You [cover_opened ? "open" : "close"] [src]'s cover.</span>")
	update_icon()

/obj/item/weapon/gun/projectile/automatic/m60/attack_self(mob/user as mob)
	if(cover_opened)
		toggle_cover(user) //close the cover
		playsound(user, 'sound/weapons/gunporn/m249_close.ogg', 100, 1)
	else
		return ..() //once closed, behave like normal

/obj/item/weapon/gun/projectile/automatic/m60/attack_hand(mob/user as mob)
	if(!cover_opened && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
		playsound(user, 'sound/weapons/gunporn/m249_open.ogg', 100, 1)
	else
		return ..() //once open, behave like normal

/obj/item/weapon/gun/projectile/automatic/m60/load_ammo(var/obj/item/A, mob/user)
	if(!cover_opened)
		to_chat(user, "<span class='warning'>You need to open the cover to load that into [src].</span>")
		return
	..()

/obj/item/weapon/gun/projectile/automatic/m60/unload_ammo(mob/user, var/allow_dump=1)
	if(!cover_opened)
		to_chat(user, "<span class='warning'>You need to open the cover to unload [src].</span>")
		return
	..()

/obj/item/weapon/gun/projectile/automatic/m60/update_icon()
	if(istype(ammo_magazine, /obj/item/ammo_magazine/c762x51b))
		icon_state = "m60[cover_opened ? "open" : "closed"][round(ammo_magazine.stored_ammo.len, 200)]"
	else
		icon_state = "m60[cover_opened ? "open" : "closed"]-empty"
	..()

/obj/item/weapon/gun/projectile/automatic/m60/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)

/obj/item/weapon/gun/projectile/automatic/mg3
	name = "MG3"
	desc = "A standard-issue Bundeswehr squad support weapon."
	icon_state = "MG3"
	item_state = "m60"
	w_class = 5
	force = 15
	slot_flags = SLOT_BACK_GUN
	max_shells = 100
	caliber = "762x51"
	ammo_type = /obj/item/ammo_casing/a762x51
	load_method = MAGAZINE
	magazine_type = null
	allowed_magazines = /obj/item/ammo_magazine/c762x51b/bdw
	one_hand_penalty = 9
	wielded_item_state = "m60-wielded" //change
	fire_sound = 'sound/weapons/gunshot/m60.ogg'
	unload_sound = 'sound/weapons/gunporn/m249_boxremove.ogg'
	reload_sound = 'sound/weapons/gunporn/m249_boxinsert.ogg'
	cocked_sound = 'sound/weapons/gunporn/m249_charge.ogg'
	zoom_ammount = 10

	firemodes = list(
		list(mode_name="short bursts",  burst=6,  move_delay=9,  one_hand_penalty=8, burst_accuracy = list(0,-1,-1,-2,-2),          dispersion = list(0.8, 1.2, 1.2, 1.2, 1.4)),
		list(mode_name="long bursts",   burst=12, move_delay=13, one_hand_penalty=9, burst_accuracy = list(0,-1,-1,-2,-2,-2,-3,-3), dispersion = list(1.2, 1.2, 1.2, 1.2, 1.4)),
		list(mode_name="automatic",    burst=1, fire_delay=0.2,  move_delay=3,    one_hand_penalty=15, burst_accuracy=list(0,-2,-4),       dispersion=list(0.6, 0.9, 1.2), automatic = 0.2),
	)

	var/cover_opened = FALSE


/obj/item/weapon/gun/projectile/automatic/mg3/special_check(mob/user)
	if(cover_opened)
		to_chat(user, "<span class='warning'>[src]'s cover is open! Close it before firing!</span>")
		return FALSE
	return ..()

/obj/item/weapon/gun/projectile/automatic/mg3/proc/toggle_cover(mob/user)
	cover_opened = !cover_opened
	to_chat(user, "<span class='notice'>You [cover_opened ? "open" : "close"] [src]'s cover.</span>")
	update_icon()

/obj/item/weapon/gun/projectile/automatic/mg3/attack_self(mob/user as mob)
	if(cover_opened)
		toggle_cover(user) //close the cover
		playsound(user, 'sound/weapons/gunporn/m249_close.ogg', 100, 1)
	else
		return ..() //once closed, behave like normal

/obj/item/weapon/gun/projectile/automatic/mg3/attack_hand(mob/user as mob)
	if(!cover_opened && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
		playsound(user, 'sound/weapons/gunporn/m249_open.ogg', 100, 1)
	else
		return ..() //once open, behave like normal

/obj/item/weapon/gun/projectile/automatic/mg3/load_ammo(var/obj/item/A, mob/user)
	if(!cover_opened)
		to_chat(user, "<span class='warning'>You need to open the cover to load that into [src].</span>")
		return
	..()

/obj/item/weapon/gun/projectile/automatic/mg3/unload_ammo(mob/user, var/allow_dump=1)
	if(!cover_opened)
		to_chat(user, "<span class='warning'>You need to open the cover to unload [src].</span>")
		return
	..()

/obj/item/weapon/gun/projectile/automatic/mg3/update_icon()
	if(istype(ammo_magazine, /obj/item/ammo_magazine/c762x51b/bdw))
		icon_state = "mg3[cover_opened ? "open" : "closed"][round(ammo_magazine.stored_ammo.len, 100)]"
	else
		icon_state = "mg3[cover_opened ? "open" : "closed"]-empty"
	..()

/obj/item/weapon/gun/projectile/automatic/mg3/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)

//DO NOT USE
/obj/item/weapon/gun/projectile/automatic/m14
	name = "M14"
	desc = "A former standard-issue USMC combat rifle."
	icon_state = "m14"
	item_state = "m14"
	slot_flags = SLOT_BACK_GUN
	w_class = 5
	force = 10
	max_shells = 20
	caliber = "762x51"
	ammo_type = /obj/item/ammo_casing/a762x51
	load_method = MAGAZINE
	magazine_type = null
	allowed_magazines = /obj/item/ammo_magazine/c762x51s
	one_hand_penalty = 4
	accuracy = 3
	fire_delay = 2
	zoom_ammount = 10
	fire_sound = 'sound/weapons/gunshot/m14.ogg'
	wielded_item_state = "m14-wielded"
	unload_sound = 'sound/weapons/gunporn/m14_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/m14_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/m14_charge.ogg'

	var/obj/item/weapon/material/knife/bayonet/usmc/knife = FALSE

	firemodes = list(
		list(mode_name="semiauto",      burst=1, fire_delay=2,  move_delay=null,    one_hand_penalty=3,                   burst_accuracy=null, dispersion=null),
		)

/obj/item/weapon/gun/projectile/automatic/m14/New()
	..()
	src.verbs -= /obj/item/weapon/gun/projectile/automatic/m14/verb/remove_bayonet

/obj/item/weapon/gun/projectile/automatic/m14/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W, /obj/item/weapon/material/knife/bayonet/usmc))
		knife = W
		user.drop_item()
		W.loc = src
		src.attack_verb = W.attack_verb
		src.sharp += W.sharp
		src.force += W.force
		to_chat(user, "<span class='notice'>You attach [knife.name] to \the [src].</span>")
		src.verbs += /obj/item/weapon/gun/projectile/automatic/m14/verb/remove_bayonet
		update_icon()
	..()

/obj/item/weapon/gun/projectile/automatic/m14/update_icon()
	..()

	if(knife)
		var/image/I = image('icons/escalation/obj/bayonets.dmi', src, "bayonet-usmc")
		I.pixel_x += 5
		I.pixel_y += 5
		overlays += I
	else
		overlays.Cut()

	if(ammo_magazine)
		icon_state = "m14"
	else
		icon_state = "m14-empty"

/obj/item/weapon/gun/projectile/automatic/m14/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr

	src.toggle_scope(usr)

/obj/item/weapon/gun/projectile/automatic/m14/verb/remove_bayonet(mob/user)
	set name = "Remove bayonet"
	set category = "Object"
	set src in usr

	if(knife)
		knife.loc = usr
		usr.put_in_hands(knife)
		knife = FALSE
		src.attack_verb = initial(attack_verb)
		src.sharp = initial(sharp)
		src.force = initial(force)
		to_chat(user, "<span class='notice'>You deattach the bayonet from \the [src].</span>")
		src.verbs -= /obj/item/weapon/gun/projectile/automatic/m14/verb/remove_bayonet
		update_icon()

//you are not so stupid to attach bayonet to marksman riffles, aren't you? -- close quarters sniping
/obj/item/weapon/gun/projectile/automatic/m14/scoped
	name = "M21"
	desc = "A standard-issue USMC marksman rifle."
	icon_state = "m14scoped"
	item_state = "m14"
	accuracy = 5
	fire_delay = 3
	zoom_ammount = 15
	wielded_item_state = "m14-wielded"

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=3,    move_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),
		)

/obj/item/weapon/gun/projectile/automatic/m14/scoped/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "m14scoped"
	else
		icon_state = "m14scoped-empty"

/obj/item/weapon/gun/projectile/automatic/m14/scoped/verb/scope()
	set name = "Use scope"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)

/obj/item/weapon/gun/projectile/automatic/m16a1 // Delete this later
	name = "M16A1"
	desc = "A standard-issue USMC combat rifle."
	icon_state = "m16a1"
	item_state = "m16"
	w_class = 5
	load_method = MAGAZINE
	caliber = "556x45"
	slot_flags = SLOT_BACK_GUN
	ammo_type = /obj/item/ammo_casing/a556x45
	allowed_magazines = /obj/item/ammo_magazine/c556x45m
	magazine_type = null
	one_hand_penalty = 4
	accuracy = 2
	fire_delay = 1.7
	zoom_ammount = 10
	wielded_item_state = "m16-wielded"
	fire_sound = 'sound/weapons/gunshot/m16.ogg'
	unload_sound = 'sound/weapons/gunporn/m16_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/m16_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/m16_chargeback.ogg'

	var/obj/item/weapon/material/knife/bayonet/usmc/knife = FALSE

	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=1.7,    move_delay=null, one_hand_penalty=4, burst_accuracy=null,              dispersion=null),
		list(mode_name="short bursts", burst=3, fire_delay=null, move_delay=1,    one_hand_penalty=3, burst_accuracy=list(1,1,-1),      dispersion=list(0.3, 0.3, 0.6)),
		list(mode_name="long bursts",  burst=5, fire_delay=null, move_delay=2,    one_hand_penalty=4, burst_accuracy=list(1,1,0,-1,-1), dispersion=list(0.3, 0.3, 0.6, 1.2, 1.5)),
		list(mode_name="automatic",    burst=1, fire_delay=0.5,  move_delay=3,    one_hand_penalty=5, burst_accuracy=list(1,1,0),       dispersion=list(0.0, 0.3, 0.6), automatic = 0.5),
		)

/obj/item/weapon/gun/projectile/automatic/m16a1/New()
	..()
	src.verbs -= /obj/item/weapon/gun/projectile/automatic/m16a1/verb/remove_bayonet

/obj/item/weapon/gun/projectile/automatic/m16a1/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W, /obj/item/weapon/material/knife/bayonet/usmc))
		knife = W
		user.drop_item()
		W.loc = src
		src.attack_verb = W.attack_verb
		src.sharp += W.sharp
		src.force += W.force
		to_chat(user, "<span class='notice'>You attach [knife.name] to \the [src].</span>")
		src.verbs += /obj/item/weapon/gun/projectile/automatic/m16a1/verb/remove_bayonet
		update_icon()
	..()

/obj/item/weapon/gun/projectile/automatic/m16a1/update_icon()
	..()

	if(knife)
		var/image/I = image('icons/escalation/obj/bayonets.dmi', src, "bayonet-usmc")
		I.pixel_x += 7
		I.pixel_y += 9
		overlays += I
	else
		overlays.Cut()

	if(ammo_magazine)
		icon_state = "m16a1"
	else
		icon_state = "m16a1-empty"

/obj/item/weapon/gun/projectile/automatic/m16a1/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)

/obj/item/weapon/gun/projectile/automatic/m16a1/verb/remove_bayonet(mob/user)
	set name = "Remove bayonet"
	set category = "Object"
	set src in usr
	set popup_menu = 1

	if(knife)
		knife.loc = usr
		usr.put_in_hands(knife)
		knife = FALSE
		src.attack_verb = initial(attack_verb)
		src.sharp = initial(sharp)
		src.force = initial(force)
		to_chat(user, "<span class='notice'>You deattach the bayonet from \the [src].</span>")
		src.verbs -= /obj/item/weapon/gun/projectile/automatic/m16a1/verb/remove_bayonet
		update_icon()

/obj/item/weapon/gun/projectile/automatic/m16a1gl
	name = "M16A1"
	desc = "A standard-issue USMC combat rifle with a M203 launcher attached to it."
	icon_state = "m16a1gl"
	item_state = "m16gl"
	w_class = 5
	load_method = MAGAZINE
	caliber = "556x45"
	slot_flags = SLOT_BACK_GUN
	ammo_type = /obj/item/ammo_casing/a556x45
	allowed_magazines = /obj/item/ammo_magazine/c556x45m
	magazine_type = null
	one_hand_penalty = 4
	accuracy = 2
	fire_delay = 1.7
	zoom_ammount = 10
	wielded_item_state = "m16gl-wielded"
	fire_sound = 'sound/weapons/gunshot/m16.ogg'
	unload_sound = 'sound/weapons/gunporn/m16_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/m16_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/m16_chargeback.ogg'

	var/use_launcher = FALSE
	var/obj/item/weapon/gun/launcher/grenade/underslung/m203/launcher

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=1.7,    move_delay=null, one_hand_penalty=4, burst_accuracy=null, dispersion=null),
		list(mode_name="short bursts", burst=3, fire_delay=null, move_delay=1,    one_hand_penalty=3, burst_accuracy=list(1,1,-1),       dispersion=list(0.3, 0.3, 0.6)),
		list(mode_name="long bursts",   burst=5, fire_delay=null, move_delay=2,    one_hand_penalty=4, burst_accuracy=list(1,1,0,-1,-1), dispersion=list(0.3, 0.3, 0.6, 1.2, 1.5)),
		list(mode_name="automatic",    burst=1, fire_delay=0.5,  move_delay=3,    one_hand_penalty=5, burst_accuracy=list(1,1,0),       dispersion=list(0.0, 0.3, 0.6), automatic = 0.5),
		)

/obj/item/weapon/gun/projectile/automatic/m16a1gl/New()
	..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/m16a1gl/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/weapon/grenade)))//launcher.load check it for it's type and handles all another things so don't worry
		launcher.load(I, user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/m16a1gl/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		launcher.unload(user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/m16a1gl/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //do we need it? :wha:
	else
		..()

/obj/item/weapon/gun/projectile/automatic/m16a1gl/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "m16a1gl"
	else
		icon_state = "m16a1gl-empty"

/obj/item/weapon/gun/projectile/automatic/m16a1gl/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)

/obj/item/weapon/gun/projectile/automatic/m16a1gl/verb/set_gp(mob/user)
	set name = "Granade launcher"
	set category = "Object"
	set src in usr
	set popup_menu = 1

	if(launcher)
		use_launcher = !use_launcher
		to_chat(user, "<span class='notice'>You [use_launcher ? "prepare [launcher.name] to fire." : " take your gun back"]</span>")

/obj/item/weapon/gun/projectile/automatic/svd
	name = "SVD"
	desc = "A standard-issue Soviet Army and CSLA marksman rifle."
	icon_state = "svd"
	item_state = "m14"
	slot_flags = SLOT_BACK_GUN
	w_class = 5
	force = 10
	max_shells = 10
	caliber = "762x54"
	ammo_type = /obj/item/ammo_casing/a762x54
	load_method = MAGAZINE
	magazine_type = null
	allowed_magazines = /obj/item/ammo_magazine/c762x54s
	one_hand_penalty = 10
	accuracy = 5
	fire_delay = 3
	zoom_ammount = 15
	fire_sound = 'sound/weapons/gunshot/svd.ogg'
	wielded_item_state = "m14-wielded"
	unload_sound = 'sound/weapons/gunporn/svd_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/svd_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/svd_boltback.ogg'

	firemodes = list(
		list(mode_name="semiauto", burst=1, fire_delay=3,    move_delay=null, one_hand_penalty=10, burst_accuracy=null, dispersion=null),
		)

/obj/item/weapon/gun/projectile/automatic/svd/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "svd"
	else
		icon_state = "svd-empty"

/obj/item/weapon/gun/projectile/automatic/svd/verb/scope()
	set name = "Use Scope"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)

/obj/item/weapon/gun/projectile/automatic/g3a3
	name = "G3A3"
	desc = "A standard-issue Bundeswehr combat rifle."
	icon_state = "g3a3"
	item_state = "g3a3"
	w_class = 5
	load_method = MAGAZINE
	caliber = "762x51"
	slot_flags = SLOT_BACK_GUN
	ammo_type = /obj/item/ammo_casing/a762x51
	allowed_magazines = /obj/item/ammo_magazine/c762x51s
	magazine_type = null
	one_hand_penalty = 5
	accuracy = 3
	fire_delay = 4
	zoom_ammount = 10
	wielded_item_state = "g3a3-wielded"
	fire_sound = 'sound/weapons/gunshot/m16.ogg'
	unload_sound = 'sound/weapons/gunporn/m16_magout.ogg' // NEED TO CHANGE SOUNDS
	reload_sound = 'sound/weapons/gunporn/m16_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/m16_chargeback.ogg'

	var/obj/item/weapon/material/knife/bayonet/bdw/knife = FALSE

	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=4,    move_delay=null, one_hand_penalty=4, burst_accuracy=null,       dispersion=null),
		list(mode_name="short bursts", burst=2, fire_delay=null, move_delay=1,    one_hand_penalty=6, burst_accuracy=list(1,0), dispersion=list(0.3, 0.6)),
		list(mode_name="automatic",    burst=1, fire_delay=0.4,  move_delay=3,    one_hand_penalty=8, burst_accuracy=list(0,-1,-2),       dispersion=list(0.3, 0.6, 0.9), automatic = 0.4),
		)

/obj/item/weapon/gun/projectile/automatic/g3a3/New()
	..()
	src.verbs -= /obj/item/weapon/gun/projectile/automatic/g3a3/verb/remove_bayonet

/obj/item/weapon/gun/projectile/automatic/g3a3/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W, /obj/item/weapon/material/knife/bayonet/bdw))
		knife = W
		user.drop_item()
		W.loc = src
		src.attack_verb = W.attack_verb
		src.sharp += W.sharp
		src.force += W.force
		to_chat(user, "<span class='notice'>You attach [knife.name] to \the [src].</span>")
		src.verbs += /obj/item/weapon/gun/projectile/automatic/g3a3/verb/remove_bayonet
		update_icon()
	..()

/obj/item/weapon/gun/projectile/automatic/g3a3/update_icon()
	..()

	if(knife)
		var/image/I = image('icons/escalation/obj/bayonets.dmi', src, "bayonet-bwd")
		I.pixel_x += 6
		I.pixel_y += 13
		overlays += I
	else
		overlays.Cut()

	if(ammo_magazine)
		icon_state = "g3a3"
	else
		icon_state = "g3a3-empty"

/obj/item/weapon/gun/projectile/automatic/g3a3/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)

/obj/item/weapon/gun/projectile/automatic/g3a3/verb/remove_bayonet(mob/user)
	set name = "Remove bayonet"
	set category = "Object"
	set src in usr
	set popup_menu = 1

	if(knife)
		knife.loc = usr
		usr.put_in_hands(knife)
		knife = FALSE
		src.attack_verb = initial(attack_verb)
		src.sharp = initial(sharp)
		src.force = initial(force)
		to_chat(user, "<span class='notice'>You deattach the bayonet from \the [src].</span>")
		src.verbs -= /obj/item/weapon/gun/projectile/automatic/g3a3/verb/remove_bayonet
		update_icon()

/obj/item/weapon/gun/projectile/automatic/g3a3/old
	desc = "G3A3 Battle Rifle. This one has a wooden kit and shows signs of extended use."
	icon_state = "g3a3-old"

/obj/item/weapon/gun/projectile/automatic/g3a3/old/update_icon()
	..()

	if(ammo_magazine)
		icon_state = "g3a3-old"
	else
		icon_state = "g3a3-old-empty"

/obj/item/weapon/gun/projectile/automatic/g3tgs
	name = "G3TGS"
	desc = "A standard-issue Bundeswehr combat rifle with an HK79 launcher attached to it."
	icon_state = "g3tgs"
	item_state = "g3tgs"
	w_class = 5
	load_method = MAGAZINE
	caliber = "762x51"
	slot_flags = SLOT_BACK_GUN
	ammo_type = /obj/item/ammo_casing/a762x51
	allowed_magazines = /obj/item/ammo_magazine/c762x51s
	magazine_type = null
	one_hand_penalty = 5
	accuracy = 3
	fire_delay = 4
	zoom_ammount = 10
	wielded_item_state = "g3tgs-wielded"
	fire_sound = 'sound/weapons/gunshot/m16.ogg'
	unload_sound = 'sound/weapons/gunporn/m16_magout.ogg' // NEED TO CHANGE SOUNDS
	reload_sound = 'sound/weapons/gunporn/m16_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/m16_chargeback.ogg'

	var/use_launcher = FALSE
	var/obj/item/weapon/gun/launcher/grenade/underslung/m203/launcher//m203 underslug uses 40mm shells  like hk69

	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=4,    move_delay=null, one_hand_penalty=4, burst_accuracy=null,       dispersion=null),
		list(mode_name="short bursts", burst=2, fire_delay=null, move_delay=1,    one_hand_penalty=3, burst_accuracy=list(1,-1), dispersion=list(0.3, 0.6)),
		list(mode_name="automatic",    burst=1, fire_delay=0.4,  move_delay=3,    one_hand_penalty=5, burst_accuracy=list(0,-1,-2),       dispersion=list(0.3, 0.6, 0.9), automatic = 0.4),
		)

/obj/item/weapon/gun/projectile/automatic/g3tgs/New()
	..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/g3tgs/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/weapon/grenade)))//launcher.load check it for it's type and handles all another things so don't worry
		launcher.load(I, user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/g3tgs/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		launcher.unload(user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/g3tgs/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //do we need it? :wha:
	else
		..()

/obj/item/weapon/gun/projectile/automatic/g3tgs/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "g3tgs"
	else
		icon_state = "g3tgs-empty"

/obj/item/weapon/gun/projectile/automatic/g3tgs/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)
/obj/item/weapon/gun/projectile/automatic/g3tgs/verb/set_gp(mob/user)
	set name = "Granade launcher"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	if(launcher)
		use_launcher = !use_launcher
		to_chat(user, "<span class='notice'>You [use_launcher ? "prepare [launcher.name] to fire." : " take your gun back"]</span>")

/obj/item/weapon/gun/projectile/automatic/g3sg1
	name = "G3SG1"
	desc = "Marksman variant of the G3A3."
	icon_state = "g3sg1"
	item_state = "g3sg1"
	w_class = 5
	load_method = MAGAZINE
	caliber = "762x51"
	slot_flags = SLOT_BACK_GUN
	ammo_type = /obj/item/ammo_casing/a762x51
	allowed_magazines = /obj/item/ammo_magazine/c762x51s
	magazine_type = null
	one_hand_penalty = 5
	accuracy = 6
	fire_delay = 5
	zoom_ammount = 15
	wielded_item_state = "g3sg1-wielded"
	fire_sound = 'sound/weapons/gunshot/m16.ogg'
	unload_sound = 'sound/weapons/gunporn/m16_magout.ogg' // NEED TO CHANGE SOUNDS
	reload_sound = 'sound/weapons/gunporn/m16_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/m16_chargeback.ogg'

	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=5,    move_delay=null, one_hand_penalty=4, burst_accuracy=null,       dispersion=null),
		)

/obj/item/weapon/gun/projectile/automatic/g3sg1/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "g3sg1"
	else
		icon_state = "g3sg1-empty"

/obj/item/weapon/gun/projectile/automatic/g3tgs1/verb/scope()
	set name = "Use scope"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)

/obj/item/weapon/gun/projectile/automatic/vz58
	name = "Vz.58"
	desc = "A standard-issue CSLA combat rifle."
	icon_state = "vz58"
	item_state = "vz58"
	w_class = 5
	load_method = MAGAZINE
	caliber = "762x39"
	slot_flags = SLOT_BACK_GUN
	ammo_type = /obj/item/ammo_casing/a762x39
	allowed_magazines = /obj/item/ammo_magazine/c762x39m
	magazine_type = null
	one_hand_penalty = 3
	accuracy = 2
	fire_delay = 3
	zoom_ammount = 10
	wielded_item_state = "vz58-wielded"
	fire_sound = 'sound/weapons/gunshot/ak74.ogg'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.ogg'

	var/obj/item/weapon/material/knife/bayonet/csla/knife = FALSE

	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=3,    move_delay=null, one_hand_penalty=4, burst_accuracy=null,              dispersion=null, automatic = 0),
		list(mode_name="short bursts", burst=3, fire_delay=null, move_delay=3,    one_hand_penalty=5, burst_accuracy=list(1,1,0),       dispersion=list(0.0, 0.3, 0.6), automatic = 0),
		list(mode_name="long bursts",  burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=6, burst_accuracy=list(1,1,0,-1,-2), dispersion=list(0.3, 0.3, 0.6, 1.2, 1.5), automatic = 0),
		list(mode_name="automatic",    burst=1, fire_delay=1,  move_delay=3,    one_hand_penalty=5, burst_accuracy=list(1,1,0),       dispersion=list(0.0, 0.3, 0.6), automatic = 1),
		)

/obj/item/weapon/gun/projectile/automatic/vz58/New()
	src.verbs -= /obj/item/weapon/gun/projectile/automatic/vz58/verb/remove_bayonet
	..()

/obj/item/weapon/gun/projectile/automatic/vz58/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W, /obj/item/weapon/material/knife/bayonet/csla))
		knife = W
		user.drop_item()
		W.loc = src
		src.attack_verb = W.attack_verb
		src.sharp += W.sharp
		src.force += W.force
		to_chat(user, "<span class='notice'>You attach [knife.name] to \the [src].</span>")
		src.verbs += /obj/item/weapon/gun/projectile/automatic/vz58/verb/remove_bayonet
		update_icon()
	..()

/obj/item/weapon/gun/projectile/automatic/vz58/update_icon()
	..()

	if(knife)
		var/image/I = image('icons/escalation/obj/bayonets.dmi', src, "bayonet-csla")
		I.pixel_x += 10
		I.pixel_y += 8
		overlays += I
	else
		overlays.Cut()

	if(ammo_magazine)
		icon_state = "vz58"
	else
		icon_state = "vz58-empty"

/obj/item/weapon/gun/projectile/automatic/vz58/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)
/obj/item/weapon/gun/projectile/automatic/vz58/verb/remove_bayonet(mob/user)
	set name = "Remove bayonet"
	set category = "Object"
	set src in usr
	set popup_menu = 1

	if(knife)
		knife.loc = usr
		usr.put_in_hands(knife)
		knife = FALSE
		src.attack_verb = initial(attack_verb)
		src.sharp = initial(sharp)
		src.force = initial(force)
		to_chat(user, "<span class='notice'>You deattach bayonet from \the [src].</span>")
		src.verbs -= /obj/item/weapon/gun/projectile/automatic/vz58/verb/remove_bayonet
		update_icon()

/obj/item/weapon/gun/projectile/automatic/vz58gl
	name = "Vz.58"
	desc = "A standard-issue CSLA combat rifle with a GP-25 attached to it."
	icon_state = "vz58gl"
	item_state = "vz58gl"
	w_class = 5
	load_method = MAGAZINE
	caliber = "762x39"
	slot_flags = SLOT_BACK_GUN
	ammo_type = /obj/item/ammo_casing/a762x39
	allowed_magazines = /obj/item/ammo_magazine/c762x39m
	magazine_type = null
	one_hand_penalty = 3
	accuracy = 2
	fire_delay = 3
	zoom_ammount = 10
	wielded_item_state = "vz58gl-wielded"
	fire_sound = 'sound/weapons/gunshot/ak74.ogg'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.ogg'

	var/use_launcher = FALSE
	var/obj/item/weapon/gun/launcher/grenade/underslung/gp25/launcher//19.09.17 replace with so retarded gp-70

	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=3,    move_delay=null, one_hand_penalty=4, burst_accuracy=null,              dispersion=null, automatic = 0),
		list(mode_name="short bursts", burst=3, fire_delay=null, move_delay=3,    one_hand_penalty=5, burst_accuracy=list(1,1,0),       dispersion=list(0.0, 0.3, 0.6), automatic = 0),
		list(mode_name="long bursts",  burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=6, burst_accuracy=list(1,1,0,-1,-2), dispersion=list(0.3, 0.3, 0.6, 1.2, 1.5), automatic = 0),
		list(mode_name="automatic",    burst=1, fire_delay=1,  move_delay=3,    one_hand_penalty=5, burst_accuracy=list(1,1,0),       dispersion=list(0.0, 0.3, 0.6), automatic = 1),
		)

/obj/item/weapon/gun/projectile/automatic/vz58gl/New()
	..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/vz58gl/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/weapon/grenade)))//launcher.load check it for it's type and handles all another things so don't worry
		launcher.load(I, user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/vz58gl/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		launcher.unload(user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/vz58gl/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //do we need it? :wha:
	else
		..()

/obj/item/weapon/gun/projectile/automatic/vz58gl/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "vz58gl"
	else
		icon_state = "vz58gl-empty"

/obj/item/weapon/gun/projectile/automatic/vz58gl/verb/set_gp(mob/user)
	set name = "Granade launcher"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	if(launcher)
		use_launcher = !use_launcher
		to_chat(user, "<span class='notice'>You [use_launcher ? "prepare [launcher.name] to fire." : " take your gun back"]</span>")

/obj/item/weapon/gun/projectile/automatic/vz58gl/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)

/obj/item/weapon/gun/projectile/automatic/vz59
	name = "Vz. 59"
	desc = "A standard-issue CSLA squad support weapon."
	icon_state = "vz59"
	item_state = "vz59"
	w_class = 5
	force = 15
	slot_flags = SLOT_BACK_GUN
	max_shells = 200
	caliber = "762x54"
	ammo_type = /obj/item/ammo_casing/a762x54
	load_method = MAGAZINE
	magazine_type = null
	allowed_magazines = /obj/item/ammo_magazine/c762x54b/csla
	one_hand_penalty = 9
	wielded_item_state = "vz59-wielded"
	unload_sound = 'sound/weapons/gunporn/m249_boxremove.ogg'
	reload_sound = 'sound/weapons/gunporn/m249_boxinsert.ogg'
	cocked_sound = 'sound/weapons/gunporn/m249_charge.ogg'
	zoom_ammount = 10

	firemodes = list(
		list(mode_name="short bursts", burst=5, move_delay=12, one_hand_penalty=8, burst_accuracy = list(0,-1,-1,-2,-2),          dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(mode_name="long bursts",  burst=8, move_delay=15, one_hand_penalty=9, burst_accuracy = list(0,-1,-1,-2,-2,-2,-3,-3), dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	var/cover_opened = FALSE


/obj/item/weapon/gun/projectile/automatic/vz59/special_check(mob/user)
	if(cover_opened)
		to_chat(user, "<span class='warning'>[src]'s cover is open! Close it before firing!</span>")
		return FALSE
	return ..()

/obj/item/weapon/gun/projectile/automatic/vz59/proc/toggle_cover(mob/user)
	cover_opened = !cover_opened
	to_chat(user, "<span class='notice'>You [cover_opened ? "open" : "close"] [src]'s cover.</span>")
	update_icon()

/obj/item/weapon/gun/projectile/automatic/vz59/attack_self(mob/user as mob)
	if(cover_opened)
		toggle_cover(user) //close the cover
		playsound(user, 'sound/weapons/gunporn/m249_close.ogg', 100, 1)
	else
		return ..() //once closed, behave like normal

/obj/item/weapon/gun/projectile/automatic/vz59/attack_hand(mob/user as mob)
	if(!cover_opened && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
		playsound(user, 'sound/weapons/gunporn/m249_open.ogg', 100, 1)
	else
		return ..() //once open, behave like normal

/obj/item/weapon/gun/projectile/automatic/vz59/load_ammo(var/obj/item/A, mob/user)
	if(!cover_opened)
		to_chat(user, "<span class='warning'>You need to open the cover to load that into [src].</span>")
		return
	..()

/obj/item/weapon/gun/projectile/automatic/vz59/unload_ammo(mob/user, var/allow_dump=1)
	if(!cover_opened)
		to_chat(user, "<span class='warning'>You need to open the cover to unload [src].</span>")
		return
	..()

/obj/item/weapon/gun/projectile/automatic/vz59/update_icon()
	if(istype(ammo_magazine, /obj/item/ammo_magazine/c762x54b/csla))
		icon_state = "vz59[cover_opened ? "open" : "closed"][round(ammo_magazine.stored_ammo.len, 200)]"
	else
		icon_state = "vz59[cover_opened ? "open" : "closed"]-empty"

/obj/item/weapon/gun/projectile/automatic/vz59/verb/ironsights()
	set name = "Use iron sights"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	src.toggle_scope(usr)