local function isXbox360OrXBLA(Content)
  return (Content.Group == ContentGroup.Xbox360) or (Content.Group == ContentGroup.XBLA)
end

GameListFilterCategories.User["Show Xbox 360 or Xbox Live Arcade"] = function(Content)
  return isXbox360OrXBLA(Content)
end

GameListFilterCategories.User["Hide Xbox 360 and Xbox Live Arcade"] = function(Content)
  return not isXbox360OrXBLA(Content)
end