GameListFilterCategories.User["Show Kinect"] = function(Content)
	local isKinect = bit32.btest( Content.Flags, ContentFlag.KinectCompatible )
	return isKinect
end

GameListFilterCategories.User["Hide Kinect"] = function(Content)
	local isKinect = bit32.btest( Content.Flags, ContentFlag.KinectCompatible )
	return not isKinect
end