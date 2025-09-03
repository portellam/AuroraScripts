local function isQuickBoot(Content)
  local title = string.lower(Content.Title)
  return title:gsub("%s+", "") == "quickboot"
end

GameListFilterCategories.User["Show Shortcuts"] = function(Content)
  return isQuickBoot(Content)
end

GameListFilterCategories.User["Hide Shortcuts"] = function(Content)
  return not isQuickBoot(Content)
end