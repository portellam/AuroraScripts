local function is_network_backup(Content)
	return (string.lower(Content.Root) == "connx:\\")
end

GameListFilterCategories.User["Show ConnectX"] = function(Content)
	return is_network_backup(Content)
end

GameListFilterCategories.User["Hide ConnectX"] = function(Content)
	return not is_network_backup(Content)
end