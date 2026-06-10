local default = require("lua.default_applications")

local window = hl.dsp.window
local focus = hl.dsp.focus
local cmd = hl.dsp.exec_cmd

local function kmp(lhs, ...)
	hl.bind(lhs, ...)
end

local function print(command, swappy)
	if swappy then
		command = command .. ' && swappy -f "$FILE" -o "$FILE"'
	end
	return cmd(string.format("~/.config/hypr/screenshot.sh '%s'", command))
end

local resize = 20
local meta_keymaps = {
	RETURN = cmd(default.terminal),
	E = cmd(default.fileManager),
	SPACE = cmd(default.menu),
	Q = window.close(),
	F = window.fullscreen(),
	V = window.float({ action = "toggle" }),
	ESCAPE = cmd("hyprlock"),
	M = cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"),
	["SHIFT + N"] = cmd("swaync-client --close-all"),
	N = cmd("swaync-client -t"),
	["SHIFT + SPACE"] = cmd([[sh -c "printf '😀\n😂\n❤️\n🔥\n👍' | fuzzel -d | wl-copy"]]),
	R = cmd("hyprctl reload"),
	["CTRL + H"] = window.resize({ x = resize, y = 0, relative = true }),
	["CTRL + K"] = window.resize({ x = 0, y = -resize, relative = true }),
	["CTRL + J"] = window.resize({ x = 0, y = resize, relative = true }),
	["CTRL + L"] = window.resize({ x = -resize, y = 0, relative = true }),
}

for l, d in pairs({ H = "left", J = "down", K = "up", L = "right" }) do
	local opts = { direction = d }
	meta_keymaps[l] = focus(opts)
	meta_keymaps["SHIFT + " .. l] = window.move(opts)
	meta_keymaps["ALT + " .. l] = window.swap(opts)
end

for i = 1, 10 do
	local key, opts = i % 10, { workspace = i }
	meta_keymaps[key] = focus(opts)
	meta_keymaps["SHIFT + " .. key] = window.move(opts)
end

for lhs, rhs in pairs(meta_keymaps) do
	kmp("SUPER + " .. lhs, rhs)
end

local locked = { locked = true }

kmp("XF86AudioRaiseVolume", cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 10%+"), locked)
kmp("XF86AudioLowerVolume", cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%-"), locked)
kmp("XF86AudioMute", cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), locked)
kmp("XF86AudioPlay", cmd("playerctl play-pause"), locked)
kmp("XF86AudioNext", cmd("playerctl next"), locked)
kmp("XF86AudioPrev", cmd("playerctl previous"), locked)
kmp("XF86AudioStop", cmd("playerctl stop"), locked)
kmp("XF86AudioMicMute", cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), locked)

kmp("XF86MonBrightnessDown", cmd("brightnessctl set 10%-"), locked)
kmp("XF86MonBrightnessUp", cmd("brightnessctl set +10%"), locked)

kmp("PRINT", print('grim "$FILE"'))
kmp("ALT + PRINT", print('grim "$FILE"'), true)
kmp("CTRL + PRINT", print('grim -g "$(slurp)" "$FILE"'))
kmp("CTRL + ALT + PRINT", print('grim -g "$(slurp)" "$FILE"'), true)
