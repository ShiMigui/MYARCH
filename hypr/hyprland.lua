local theme = require("lua.theme")

for env, value in pairs(require("lua.envs")) do
	hl.env(env, value)
end

hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = "1",
})

hl.config({
	general = {
		gaps_in = 2,
		gaps_out = 4,
		border_size = 2,
		col = {
			active_border = {
				colors = { theme.HHEX_PRIMARY_OPAQUE, theme.HHEX_SECONDARY_OPAQUE },
				angle = 0,
			},
			inactive_border = theme.HHEX_PRIMARY_DIM,
		},
		layout = "dwindle",
		resize_on_border = false,
		allow_tearing = false,
	},
	decoration = {
		rounding = 5,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		shadow = { enabled = false },
		blur = { enabled = false },
	},
	animations = { enabled = true },
	input = {
		kb_layout = "br",
		kb_variant = "abnt2",
		follow_mouse = 1,
		touchpad = { natural_scroll = false },
	},
	dwindle = { preserve_split = true },
	misc = { force_default_wallpaper = 0, disable_hyprland_logo = true },
})

require("lua.keymaps")

require("lua.autostart")
