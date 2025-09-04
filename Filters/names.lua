GameListFilterCategories.NameFilter = {}

local function create_name_filter(letter)
  return function(Content)
    local isMatch = (string.upper(string.sub(Content.Name, 1, 1)) == letter)
    return isMatch
  end
end

-- A - F
GameListFilterCategories.NameFilter["A - F"] = {
  A = create_name_filter("A"),
  B = create_name_filter("B"),
  C = create_name_filter("C"),
  D = create_name_filter("D"),
  E = create_name_filter("E"),
  F = create_name_filter("F"),
}

-- G - L
GameListFilterCategories.NameFilter["G - L"] = {
  G = create_name_filter("G"),
  H = create_name_filter("H"),
  I = create_name_filter("I"),
  J = create_name_filter("J"),
  K = create_name_filter("K"),
  L = create_name_filter("L"),
}

-- M - R
GameListFilterCategories.NameFilter["M - R"] = {
  M = create_name_filter("M"),
  N = create_name_filter("N"),
  O = create_name_filter("O"),
  P = create_name_filter("P"),
  Q = create_name_filter("Q"),
  R = create_name_filter("R"),
}

-- S - X
GameListFilterCategories.NameFilter["S - X"] = {
  S = create_name_filter("S"),
  T = create_name_filter("T"),
  U = create_name_filter("U"),
  V = create_name_filter("V"),
  W = create_name_filter("W"),
  X = create_name_filter("X"),
}

-- Y - Z
GameListFilterCategories.NameFilter["Y - Z"] = {
  Y = create_name_filter("Y"),
  Z = create_name_filter("Z"),
}

-- Other
GameListFilterCategories.NameFilter["Other"] = function(Content)
  local isMatch = (string.match(string.sub(Content.Name, 1, 1), "[a-zA-Z]") == nil)
  return isMatch
end