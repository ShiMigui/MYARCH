local HOME = os.getenv("HOME")

local data_dirs = {
	"/usr/share",
	"/usr/local/share",
	HOME .. "/.local/share",
	"/var/lib/flatpak/exports/share",
	HOME .. "/.local/share/flatpak/exports/share",
}

local existing = os.getenv("XDG_DATA_DIRS")
if existing and existing ~= "" then
	data_dirs[#data_dirs + 1] = existing
end

return table.concat(data_dirs, ":")
