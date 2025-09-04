local function has_played(Content)
	return	(Content.LastPlayed.HighPart ~= 0)
			and (Content.LastPlayed.LowPart ~= 0)
end

GameListFilterCategories.User["Show Played Games"] = function(Content)
	return has_played(Content)
end

GameListFilterCategories.User["Hide Played Games"] = function(Content)
	return not has_played(Content)
end