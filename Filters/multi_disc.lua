GameListFilterCategories.User["Show Multi-Disc"] = function(Content)
	local hasMultiDisc = (Content.DiscNum >= 2)
	return hasMultiDisc
end

GameListFilterCategories.User["Hide Multi-Disc"] = function(Content)
	local hasMultiDisc = (Content.DiscNum >= 2)
	return not hasMultiDisc
end