local function has_multi_disc(Content)
	return Content.DiscNum >= 2
end

GameListFilterCategories.User["Show Multi-Disc"] = function(Content)
	return has_multi_disc(Content)
end

GameListFilterCategories.User["Hide Multi-Disc"] = function(Content)
	return not has_multi_disc(Content)
end