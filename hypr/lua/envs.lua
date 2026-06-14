local HOME = os.getenv("HOME")

local PATH = os.getenv("PATH") or ""
local mason_bin = HOME .. "/.local/share/nvim/mason/bin"
if not PATH:find(mason_bin) then
	PATH = mason_bin .. ":" .. PATH
end

return {
	XCURSOR_SIZE = "24",
	HYPRCURSOR_SIZE = "24",
	QT_QPA_PLATFORM = "wayland",
	QT_QPA_PLATFORMTHEME = "qt6ct",
	XDG_DATA_DIRS = require("lua.path"),
	FONT = "Electroharmonix",
	PATH = PATH,
}
