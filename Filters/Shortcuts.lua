local function is_quick_boot(Content)
  local title = string.lower(Content.Title)
  return title:gsub("%s+", "") == "quickboot"
end

GameListFilterCategories.User["Show Shortcuts"] = function(Content)
  return is_quick_boot(Content)
end

GameListFilterCategories.User["Hide Shortcuts"] = function(Content)
  return not is_quick_boot(Content)
end