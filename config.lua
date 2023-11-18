Config = {}
Config.Locale = GetConvar('esx:locale', 'en')
Config.Visible = true

Config.Items = {
	--Essen
	["bread"] = {
		type = "food",
		prop = "prop_cs_burger_01", -- Das item was in der animation verwendet wird https://forge.plebmasters.de/objects oder https://gta-objects.xyz
		status = 200000,			-- wie Essen oder trinken in den Korper gehen soll was angezegt wird
		remove = true,  			-- Wenn es aus dem Inventar verschwinden soll.
		anim = {dict = 'mp_player_inteat@burger', name = 'mp_player_int_eat_burger_fp', settings = {8.0, -8, -1, 49, 0, 0, 0, 0}} -- hier kannst du dir die animationen aussuchen https://forge.plebmasters.de/animations/amb@bagels@male@walking@@static?ped=A_F_Y_Beach_01
	},
	["sandwich"] = {
		type = "food",
		prop = "prop_cs_burger_01",
		status = 200000,
		remove = true,
		anim = {dict = 'mp_player_inteat@burger', name = 'mp_player_int_eat_burger_fp', settings = {8.0, -8, -1, 49, 0, 0, 0, 0}}
	},
	["fish"] = {
		type = "food",
		prop = "ng_proc_food_nana1a",
		status = 2000,
		remove = true,
		anim = {dict = 'mp_player_inteat@burger', name = 'mp_player_int_eat_burger_fp', settings = {8.0, -8, -1, 49, 0, 0, 0, 0}}
	},
	["snikkel_candy"] = {
		type = "food",
		prop = "prop_choc_meto",
		status = 200000,
		remove = true,
		anim = {dict = 'mp_player_inteat@burger', name = 'mp_player_int_eat_burger_fp', settings = {8.0, -8, -1, 49, 0, 0, 0, 0}}
	},
	
	
	--Trinken
	["water_bottle"] = {
		type = "drink",
		prop = "prop_ld_flow_bottle",
		status = 100000,
		remove = true,
		anim = {dict = 'mp_player_intdrink', name = 'loop_bottle', settings = {1.0, -1.0, 2000, 0, 1, true, true, true}}
	},
	["water"] = {
		type = "drink",
		prop = "prop_ld_flow_bottle",
		status = 100000,
		remove = true,
		anim = {dict = 'mp_player_intdrink', name = 'loop_bottle', settings = {1.0, -1.0, 2000, 0, 1, true, true, true}}
	},
	["kurkakola"] = {
		type = "drink",
		prop = "prop_ld_flow_bottle",
		status = 100000,
		remove = true,
		anim = {dict = 'mp_player_intdrink', name = 'loop_bottle', settings = {1.0, -1.0, 2000, 0, 1, true, true, true}}
	}
}
