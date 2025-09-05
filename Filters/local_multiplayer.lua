local function is_match(Content)
	local minco = bit32.rshift(bit32.band(Content.CapabilitiesOffline.LowPart, 0x00FF0000), 16)
	local maxco = bit32.rshift(bit32.band(Content.CapabilitiesOffline.LowPart, 0xFF000000), 24)
	return (minco >= 1) and (maxco >= 2)
end

GameListFilterCategories.User["Show Local Multiplayer"] = function(Content)
	return is_match(Content)
end

GameListFilterCategories.User["Hide Local Multiplayer"] = function(Content)
	return not is_match(Content)
end