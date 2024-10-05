local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font({ family = "Berkeley Mono" })
config.font_size = 14

-- config.window_background_opacity = 0.9
-- config.macos_window_background_blur = 30
-- config.window_decorations = "RESIZE|INTEGRATED_BUTTONS"
config.window_frame = {
	font = wezterm.font({ family = "Berkeley Mono", weight = "Bold" }),
	font_size = 11,
}

wezterm.on("toggle-background", function(window, pane)
	local overrides = window:get_config_overrides() or {}
	if not overrides.background then
		overrides.background = {
			{
				source = {
					File = "/Users/thomasroff/.config/wezterm/backgrounds/hands.png",
				},
				opacity = 0.9,
			},
		}
	else
		overrides.background = nil
	end
	window:set_config_overrides(overrides)
end)

config.keys = {
	{
		key = "B",
		mods = "CTRL",
		action = wezterm.action.EmitEvent("toggle-background"),
	},
}

return config
