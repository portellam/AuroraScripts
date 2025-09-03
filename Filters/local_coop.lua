local function isLocalCooperative(Content)
	local minco = bit32.rshift(bit32.band(Content.CapabilitiesOffline.LowPart, 0x00FF0000), 16)
	local maxco = bit32.rshift(bit32.band(Content.CapabilitiesOffline.LowPart, 0xFF000000), 24)
	return (minco >= 1) and (maxco >= 2)
end

GameListFilterCategories.User["Show Local Cooperative"] = function(Content)
	return isLocalCooperative(Content)
end

GameListFilterCategories.User["Hide Local Cooperative"] = function(Content)
	return not isLocalCooperative(Content)
end