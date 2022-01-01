local wezterm = require("wezterm")

-- local launch_menu = {}
-- local default_shell = "/bin/zsh"
local padding = {
	left = "1cell",
	right = "1cell",
	top = "0.5cell",
	bottom = "0.5cell",
}

-- A helper function for my fallback fonts
function font_with_fallback(name, params)
	local names = { name, "mini-file-icons", "Hack Nerd Font", "SauceCodePro Nerd Font" }
	return wezterm.font_with_fallback(names, params)
end

return {
	color_scheme = "wezterm_tokyonight_night",
	font = font_with_fallback({
		family = "FiraCode Nerd Font",
		harfbuzz_features = {
			"zero",
		},
	}),
	font_rules = {
		{
			intensity = "Bold",
			font = font_with_fallback({
				family = "FiraCode Nerd Font",
				harfbuzz_features = {
					"zero",
				},
				weight = "Medium",
			}),
		},
		{
			italic = true,
			intensity = "Bold",
			font = font_with_fallback({
				family = "Iosevka Nerd Font",
				-- family = "Dank Mono",
				weight = "Bold",
				italic = true,
			}),
		},
		{
			italic = true,
			font = font_with_fallback({
				-- family = "Dank Mono",
				family = "Iosevka Nerd Font",
				weight = "DemiBold",
				italic = true,
			}),
		},
	},
	initial_cols = 128,
	initial_rows = 32,
	use_dead_keys = false,
	window_padding = padding,
	window_decorations = "RESIZE",
	hide_tab_bar_if_only_one_tab = true,
	selection_word_boundary = " \t\n{}[]()\"'`,;:@",
	line_height = 1.25,
	font_size = 13,
	window_background_opacity = 0.95,
	bold_brightens_ansi_colors = false,
	-- freetype_load_target = "Light",
}
