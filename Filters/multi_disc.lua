local function hasMultiDisc(Content)
	return Content.DiscNum >= 2
end

GameListFilterCategories.User["Show Multi-Disc"] = function(Content)
	return hasMultiDisc(Content)
end

GameListFilterCategories.User["Hide Multi-Disc"] = function(Content)
	return not hasMultiDisc(Content)
end
