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

return config
