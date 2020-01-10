
local prefixes = {
	{
		name="Cobble",
		icon="xp_cobble.png",
		color={r=255, g=255, b=255},
		base_xp=0,
		xp_modifier=100
	}, -- 0 - 1k
	{
		name="Stone",
		icon="xp_stone_block.png",
		color={r=164, g=164, b=164},
		base_xp=2000,
		xp_modifier=200
	}, -- 2k - 4k
	{
		name="Coal",
		icon="xp_coal_block.png",
		color={r=99, g=99, b=99},
		base_xp=5000,
		xp_modifier=500
	}, -- 5k - 10k
	{
		name="Iron",
		icon="xp_steel_block.png",
		color={r=214, g=215, b=216},
		base_xp=20000,
		xp_modifier=6000
	}, -- 20k - 80k
	{
		name="Copper",
		icon="xp_copper_block.png",
		color={r=209, g=188, b=115},
		base_xp=100000,
		xp_modifier=10000
	}, -- 100k - 200k
	{
		name="Gold",
		icon="xp_gold_block.png",
		color={r=196, g=162, b=39},
		base_xp=300000,
		xp_modifier=50000
	}, -- 300k - 800k
	{
		name="Diamond",
		icon="xp_diamond_block.png",
		color={r=85, g=210, b=252},
		base_xp=1000000,
		xp_modifier=80000
	}, -- 1000k - 1800k
	{
		name="Mese",
		icon="xp_mese_block.png",
		color={r=238, g=252, b=85},
		base_xp=2000000,
		xp_modifier=300000
	}, -- 2000k - 5000k
	{
		name="Lava",
		icon="xp_lava.png",
		color={r=238, g=30, b=30},
		base_xp=6000000,
		xp_modifier=400000
	} -- 6000k - 10M
}

-- further ideas: mithril?

local suffixes = {
	-- 7 suffixes
	{name="Peasant", xp_modifier=0},
	{name="Merchant", xp_modifier=1},
	{name="Knight", xp_modifier=2},
	{name="Lord", xp_modifier=3},
	{name="Mayor", xp_modifier=5},
	{name="Master", xp_modifier=7},
	{name="God", xp_modifier=10}
}


-- #suffixes x #prefixes
for _,prefix in pairs(prefixes) do
	for i,suffix in pairs(suffixes) do
		local xp = prefix.base_xp + (prefix.xp_modifier * suffix.xp_modifier)

		xp_redo.register_rank({
			name = prefix.name .. " " .. suffix.name,
			icon = prefix.icon,
			color = prefix.color,
			xp = xp
		})

	end
end


