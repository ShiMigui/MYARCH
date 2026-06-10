local PATH = {
	"/usr/share",
	"/usr/local/share",
	"/var/lib/flatpak/exports/share",
	"/home/shimigui/.local/share/flatpak/exports/share",
}
local XDG_DATA_DIRS = os.getenv("XDG_DATA_DIRS")
if XDG_DATA_DIRS then
	PATH[#PATH + 1] = XDG_DATA_DIRS
end

return table.concat(PATH, ":")
