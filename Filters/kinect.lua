local function isKinectCompatible(Content)
    return bit32.btest(Content.Flags, ContentFlag.KinectCompatible)
end

GameListFilterCategories.User["Show Kinect"] = function(Content)
    return isKinectCompatible(Content)
end

GameListFilterCategories.User["Hide Kinect"] = function(Content)
    return not isKinectCompatible(Content)
end