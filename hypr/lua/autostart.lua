local exec_once = {
	"waybar",
	"swaync",
	"nm-applet",
	"hypridle",
	"hyprpaper",
}

hl.on("hyprland.start", function()
	for _, p in ipairs(exec_once) do
		hl.exec_cmd(p)
	end
end)
