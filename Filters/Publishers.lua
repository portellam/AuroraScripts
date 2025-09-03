local function IsActivisionGame(Content)
	return isPublisher(Content, "activision", 10)
end

local function IsBandaiNamcoGame(Content)
	return isPublisher(Content, "bandai", 6) or isPublisher(Content, "namco", 5)
end

local function IsBethesdaGame(Content)
	return isPublisher(Content, "bethesda", 8)
end

local function IsCapcomGame(Content)
	return isPublisher(Content, "capcom", 6)
end

local function IsCodeMastersGame(Content)
	return isPublisher(Content, "codemasters", 11)
end

local function IsDisneyGame(Content)
	return isPublisher(Content, "disney", 6)
end

local function IsEAGame(Content)
	return isPublisher(Content, "electronic arts", 15) or isPublisher(Content, "ea", 2)
end

local function IsEidosGame(Content)
	return isPublisher(Content, "eidos", 5)
end

local function IsKonamiGame(Content)
	return isPublisher(Content, "konami", 6)
end

local function IsMicrosoftGame(Content)
	return isPublisher(Content, "microsoft", 9) or isPublisher(Content, "mgs", 3)
end

local function IsPopCapGame(Content)
	return isPublisher(Content, "popcap", 6)
end

local function IsRockstarGame(Content)
	return isPublisher(Content, "rockstar", 8)
end

local function IsSegaGame(Content)
	return isPublisher(Content, "sega", 4)
end

local function IsSquareEnixGame(Content)
	return isPublisher(Content, "square", 6)
end

local function IsTHQGame(Content)
	return isPublisher(Content, "thq", 3)
end

local function IsUbisoftGame(Content)
	return isPublisher(Content, "ubisoft", 7)
end

local function IsWarnerBrosGame(Content)
	return isPublisher(Content, "warner bros", 11) or isPublisher(Content, "wb games", 8) or isPublisher(Content, "warner brothers", 15)
end

GameListFilterCategories.Publishers = {
	EA = IsEAGame,
	Ubisoft = IsUbisoftGame,
	["Warner Bros"] = IsWarnerBrosGame,
	THQ = IsTHQGame,
	Activision = IsActivisionGame,
	["Bandai Namco"] = IsBandaiNamcoGame,
	Capcom = IsCapcomGame,
	Codemasters = IsCodeMastersGame,
	Konami = IsKonamiGame,
	Microsoft = IsMicrosoftGame,
	PopCap = IsPopCapGame,
	Rockstar = IsRockstarGame,
	Sega = IsSegaGame,
	["Square Enix"] = IsSquareEnixGame,
	Bethesda = IsBethesdaGame,
	Eidos = IsEidosGame,
	Disney = IsDisneyGame
}