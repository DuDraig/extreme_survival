--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0


es = {}

function stairs.register_stair_and_slab(subname, recipeitem, groups, images,
	desc_stair, desc_slab, sounds)
	stairs.register_stair(subname, recipeitem, groups, images, desc_stair, sounds)
	stairs.register_slab(subname, recipeitem, groups, images, desc_slab, sounds)
end




--Extreme Survival Stairs
stairs.register_stair_and_slab("Ruby", "es:rubyblock",
		{cracky = 1},
		{"ruby_block.png"},
		"Ruby Block Stair",
		"Ruby Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("Emerald", "es:emeraldblock",
		{cracky = 1},
		{"emerald_block.png"},
		"Emerald Block Stair",
		"Emerald Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("Aikerum", "es:aikerumblock",
		{cracky = 1},
		{"aikerum_block.png"},
		"Aikerum Block Stair",
		"Aikerum Block Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("Infinium", "es:infiniumblock",
		{cracky = 1},
		{"infinium_block.png"},
		"Infinium Block Stair",
		"Infinium Block Slab",
		default.node_sound_stone_defaults())
stairs.register_stair_and_slab("Dirt", "default:dirt",
		{cracky = 1},
		{"default_dirt.png"},
		"Dirt Block Stair",
		"Dirt Block Slab",
		default.node_sound_stone_defaults())