local module = require("get_filters")

local function has_played(Content)
	return	(Content.LastPlayed.HighPart ~= 0)
			and (Content.LastPlayed.LowPart ~= 0)
end

local is_match = function(Content)
  return has_played(Content)
end

module.set_filters("Played", is_match)