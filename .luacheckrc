unused_args = false
allow_defined_top = true

globals = {
    "pacmine",
    "mario",
    "myhighscore"
}
read_globals = { -- Read only, writing to them generates a warning
	"DIR_DELIM",
	"minetest", "core",
	"dump", "dump2", "table",
	"vector", "nodeupdate",
	"VoxelManip", "VoxelArea",
	"PseudoRandom", "ItemStack",
	"intllib", "string.split",
}

exclude_files = {".luacheckrc"}
