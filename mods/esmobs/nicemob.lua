--esmobs v0.0.3
--maikerumine
--made for Extreme Survival game


--dofile(minetest.get_modpath("esmobs").."/api.lua")

--REFERENCE
--function (mod_name_here):spawn_specific(name, nodes, neighbors, min_light, max_light, interval, chance, active_object_count, min_height, max_height)

bp:register_spawn("esmobs:man", {"default:dirt_with_grass","default:snowblock","default:snow_block","default:stone", "default:stonebrick","default:cobble"}, 11, -1, 9000, 1, 31000)
bp:register_spawn("esmobs:woman", {"default:dirt_with_grass","default:snowblock","default:snow_block","default:stone", "default:stonebrick","default:cobble"}, 11, -1, 9000, 1, 31000)


bp:register_mob("esmobs:man", {
	type = "npc",
	hp_max = 115,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"man.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 25,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 5,
		sounds = {
		war_cry = "mobs_die_yell",
		death = "mobs_death1",
		attack = "default_punch",
		},
	drops = {
		{name = "default:apple",
		chance = 1,
		min = 10,
		max = 28,},
		{name = "default:sword_steel",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 13,
			max=30,
		},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
--Maikerumine added hackish follow code
	on_rightclick = function (self, clicker)
		bp:face_pos(self,clicker:getpos())
		bp:team_player(self,clicker:getpos())
		if self.state ~= "path" and self.state ~= "following" then
		local_chat(clicker:getpos(),"Old man: I am getting too old for this...  Okay, I'll help ya!",3)
			if not self.tamed then
				self.tamed = true
				self.follow = true
			end
		end
	end,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,


})

bp:register_mob("esmobs:woman", {
	type = "npc",
	hp_max = 115,
	collisionbox = {-0.3, -1.0, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"woman.png",
			"3d_armor_trans.png",
				minetest.registered_items["default:sword_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 35,
	walk_velocity = 1,
	run_velocity = 3,
	damage = 5,
		sounds = {
		war_cry = "mobs_oerkki_attack",
		death = "mobs_death1",
		attack = "default_punch",
		},
	drops = {
		{name = "default:jungletree",
		chance = 1,
		min = 5,
		max = 23,},
		{name = "default:sword_steel",
		chance = 2,
		min = 1,
		max = 1,},
		{name = "default:stick",
			chance = 2,
			min = 13,
			max=30,
		},
	},
	armor = 75,
	drawtype = "front",
	water_damage = 10,
	lava_damage = 50,
	light_damage = 0,
--Maikerumine added hackish follow code
	on_rightclick = function (self, clicker)
		bp:face_pos(self,clicker:getpos())
		bp:team_player(self,clicker:getpos())
		if self.state ~= "path" and self.state ~= "following" then
		local_chat(clicker:getpos(),"Old woman: I may walk slow, but I can fight like a champ!",3)
			if not self.tamed then
				self.tamed = true
				self.follow = true
			end
		end
	end,
	attack_type = "dogfight",
	animation = {
		speed_normal = 17,
		speed_run = 25,
		stand_start = 0,
		stand_end = 40,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 191,
	},
	
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,


})
