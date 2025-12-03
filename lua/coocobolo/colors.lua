local M = {}

M.base = {
	none = "NONE",
	dark_black = "#000000",
	dark_erie = "#1B1B1B",
	dark_onxy = "#101010",
	dark_onxy2 = "#171717",
	dark_eerie = "#1A1A1A",
	dark_rangoon = "#191919",
	dark_jungle = "#202020",
	dark_jungle2 = "#212121",
	dark_thunder = "#303030",
	dark_grey = "#353535",
	dark_dune = "#474747",

	white_dust0 = "#e2e1e0",
	white_dust = "#9F9C9A",
	white_dust2 = "#8E8C8A",
	white_dust3 = "#7E7C7B",

	orange_chrome = "#FFA600",
	orange_blush = "#EEA190",
	shocking_orange = "#E0654A",

	yellow_coral = "#FAEA48",
	yellow_candle = "#FFC436",
	yellow_naples = "#FFD05E",
	yellow_naples_90 = "#ffe099",

	grey_corporate = "#5C5C5C",
	grey_simple = "#676765",
	grey_davy = "#555555",
	dim_grey = "#606060",
	grey_gravel = "#484848",
	grey_smokey = "#707070",
	grey_slate = "#BAB8B4",

	green_shadow = "#898B55",
	green_meadow = "#71AC1E",
	green_meadow2 = "#95C92C",
	green_dull = "#D9D930",
	green_toska = "#5DE4C7",
	green_emerald = "#50C878",
	green_payton = "#81BE83",
	green_limerick = "#A5BE00",
	green_neon = "#9ACD32",
	green_coral = "#82CD47",

	darkolivegreen = "#5a5e48",

	yellowgreen = "#95C92C",

	grape = "#B9C0EA",

	red_orange = "#F26E5A",
	red_coral = "#FF4545",

	grape_elsie = "#D79FC7",
	grape_elsie2 = "#564050",

	blue_light_teal = "#B1CCC5",
	blue_deepsky = "#00BFFF",
	blue_deepsky_30 = "#2084af",

	blue_lowkey = "#B5CBCC",
	blue_lowkey2 = "#BECDDB",

	yellow_sunglow = "#FFC436",
	goldenrod = "#FFC436",
	yellow_sunglow_dim = "#FFD05E",

	orange_beer = "#FB8B24",
	orange_chinese = "#FFB000",
	orange_soft = "#F3B664",

	neutral_10 = "#ffffff",
	neutral_15 = "#8c898c",
	neutral_20 = "#555554",
	neutral_30 = "#444443",
	neutral_40 = "#343433",
	neutral_50 = "#252524",
	neutral_60 = "#161616",

	crimson_95 = "#d22737",
	crimson_40 = "#e3635f",
	crimson_25 = "#882326",
}

local merge = function(a, b)
	local c = {}
	for k, v in pairs(a) do
		c[k] = v
	end
	for k, v in pairs(b) do
		c[k] = v
	end
	return c
end

M.dark_palette = {
	bg = M.base.dark_black,
	fg = M.base.neutral_30,
	primary = M.base.neutral_60,
	primary_2 = M.base.dark_grey,
	primary_3 = M.base.white_dust3,
	primary_4 = M.base.white_dust2,
	primary_5 = M.base.white_dust,
	primary_6 = M.base.white_dust0,
}

M.colorful_palette = {
	bg = M.base.white_dust3,
	fg = M.base.dark_black,
	primary = M.base.dark_grey,
}

M.dark_palette = merge(M.base, M.dark_palette)
M.colorful_palette = merge(M.base, M.colorful_palette)

return M
