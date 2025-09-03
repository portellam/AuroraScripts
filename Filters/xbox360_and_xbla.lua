GameListFilterCategories.User["Show Xbox 360 or Xbox Live Arcade"] = function(Content)
  local isXbox360 = (Content.Group == ContentGroup.Xbox360)
  local isXBLA = (Content.Group == ContentGroup.XBLA)
  return isXbox360 or isXBLA
end

GameListFilterCategories.User["Hide Xbox 360 and Xbox Live Arcade"] = function(Content)
  local isXbox360 = (Content.Group == ContentGroup.Xbox360)
  local isXBLA = (Content.Group == ContentGroup.XBLA)

  if isXbox360 or isXBLA then
    return false
  end

  return true
end