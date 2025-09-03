local function hasPlayedGames(Content)
	return (Content.LastPlayed.HighPart ~= 0) and (Content.LastPlayed.LowPart ~= 0)
end

GameListFilterCategories.User["Show Played Games"] = function(Content)
	return hasPlayedGames(Content)
end

GameListFilterCategories.User["Hide Played Games"] = function(Content)
	return not hasPlayedGames(Content)
end