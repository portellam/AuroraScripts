GameListFilterCategories.NameFilter = {}

local function createNameFilter(letter)
  return function(Content)
    local isMatch = (string.upper(string.sub(Content.Name, 1, 1)) == letter)
    return isMatch
  end
end

-- A - F
GameListFilterCategories.NameFilter["A - F"] = {
  A = createNameFilter("A"),
  B = createNameFilter("B"),
  C = createNameFilter("C"),
  D = createNameFilter("D"),
  E = createNameFilter("E"),
  F = createNameFilter("F"),
}

-- G - L
GameListFilterCategories.NameFilter["G - L"] = {
  G = createNameFilter("G"),
  H = createNameFilter("H"),
  I = createNameFilter("I"),
  J = createNameFilter("J"),
  K = createNameFilter("K"),
  L = createNameFilter("L"),
}

-- M - R
GameListFilterCategories.NameFilter["M - R"] = {
  M = createNameFilter("M"),
  N = createNameFilter("N"),
  O = createNameFilter("O"),
  P = createNameFilter("P"),
  Q = createNameFilter("Q"),
  R = createNameFilter("R"),
}

-- S - X
GameListFilterCategories.NameFilter["S - X"] = {
  S = createNameFilter("S"),
  T = createNameFilter("T"),
  U = createNameFilter("U"),
  V = createNameFilter("V"),
  W = createNameFilter("W"),
  X = createNameFilter("X"),
}

-- Y - Z
GameListFilterCategories.NameFilter["Y - Z"] = {
  Y = createNameFilter("Y"),
  Z = createNameFilter("Z"),
}

-- Other
GameListFilterCategories.NameFilter["Other"] = function(Content)
  local isMatch = (string.match(string.sub(Content.Name, 1, 1), "[a-zA-Z]") == nil)
  return isMatch
end