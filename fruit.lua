local cbox = {
		type = "fixed",
		fixed = {{-0.875,  0.125,  -0.0625,  -0.125,  0.875,  0.0625}}
	}

local pelletitems = {
	{"cherrys", "Cherrys","2"},
	{"apple", "Apple","3"},
	{"orange", "Orange","4"},
	{"strawberry", "Strawberry","2"},
	}
for i in ipairs (pelletitems) do
	local itm = pelletitems[i][1]
	local desc = pelletitems[i][2]
	local hlth = pelletitems[i][3]

minetest.register_node("mypacman:"..itm,{
	description = desc,
	inventory_image = "mypacman_"..itm..".png",
	tiles = {"mypacman_"..itm..".png",},
	drawtype = "mesh",
	mesh = "mypacman_"..itm..".obj",
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	light_source = 14,
	groups = {cracky=3,not_in_creative_inventory = 0},
	--node_box = cbox,
	selection_box = cbox,
	collision_box = cbox,
	after_destruct = function(pos, oldnode)
		mypacman.on_player_got_fruit()
	end,
})
end
