local function set_filters(name, is_match)
  GameListFilterCategories.User["Show" .. name] = is_match
  GameListFilterCategories.User["Hide" .. name] = not is_match
end