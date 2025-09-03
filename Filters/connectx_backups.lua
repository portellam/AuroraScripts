GameListFilterCategories.User["Show ConnectX"] = function(Content)
	local isConnectX = (string.lower(Content.Root) == "connx:\\")
	return isConnectX
end

GameListFilterCategories.User["Hide ConnectX"] = function(Content)
	local isConnectX = (string.lower(Content.Root) == "connx:\\")
	return not isConnectX
end