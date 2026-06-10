local PRIMARY = "9333ea"
local SECONDARY = "06b6d4"

local M = {
	HHEX_BG = "000000",
	HHEX_FG = "e2e8f0",

	HHEX_PRIMARY = PRIMARY,
	HHEX_PRIMARY_DIM = "rgba(" .. PRIMARY .. "9f)",
	HHEX_PRIMARY_OPAQUE = "rgba(" .. PRIMARY .. "ff)",

	HHEX_SECONDARY = SECONDARY,
	HHEX_SECONDARY_DIM = "rgba(" .. SECONDARY .. "9f)",
	HHEX_SECONDARY_OPAQUE = "rgba(" .. SECONDARY .. "ff)",
}

local envs = require("lua.envs")
for n, v in pairs(M) do
	envs[n] = v
end

return M
