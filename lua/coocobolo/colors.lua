local M = {}

M.palette = {
	none = "NONE",
	blue = {
		azure = "#008fd1",
		meadow = "#1bbb96",
	},
	dark = {
		chinese = "#101010",
		chinese_dim = "#111111",
		elitle = "#191919",
		eerie = "#1A1A1A",
		raisin = "#222222",
		charcoal = "#303030",
		liver = "#323232",
		soft = "#45474B",
		soft2 = "#555555",
		softest = "#707070",
		other = "#606060",
	},
	grey = {
		tints = "#989898",
		argent = "#C1C1C1",
		tones = "#606060",
		light = "#D9D9D9",
		suplight = "#999999",
	},
	red = {
		soft2 = "#E38C8C",
		softest = "#FF6666",
		soft = "#F26E5A",
		cg = "#E0654A",
	},
	yellow = {
		sunglow = "#FFC436",
		sunglow_dim = "#FFD05E",
		soft = "#FFD099",
	},
	orange = {
		beer = "#FB8B24",
		chinese = "#d68f00",
		soft = "#F3B664",
		softest = "#FFA13D",
	},
	green = {
		funky = "#E9EDC9",
		pear = "#D2DE32",
		granny = "#C2E1B7",
		g_yellow = "#65B300",
	},
}

function M.setup(opts)
	opts = opts or {}
end

return M
