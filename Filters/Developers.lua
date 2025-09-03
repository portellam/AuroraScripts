local function IsActivisionGame(Content)
	return (string.lower(string.sub(Content.Developer, 0, 10)) == "activision")
end

local function IsBandaiNamcoGame(Content)
	return 	(string.lower(string.sub(Content.Developer, 0, 6)) == "bandai") or 
					(string.lower(string.sub(Content.Developer, 0, 5)) == "namco")
end

local function IsBethesdaGame(Content)
	return (string.lower(string.sub(Content.Developer, 0, 8)) == "bethesda")
end

local function IsCapcomGame(Content)
	return (string.lower(string.sub(Content.Developer, 0, 6)) == "capcom")
end

local function IsCodeMastersGame(Content)
	return (string.lower(string.sub(Content.Developer, 0, 11)) == "codemasters")
end

local function IsDisneyGame(Content)
	return (string.lower(string.sub(Content.Developer, 0, 6)) == "disney")
end

local function IsEaGame(Content)
	return	(string.lower(string.sub(Content.Developer, 0, 15)) == "electronic arts") or 
					(string.lower(string.sub(Content.Developer, 0, 2)) == "ea")
end

local function IsEidosGame(Content)
	return (string.lower(string.sub(Content.Developer, 0, 5)) == "eidos")
end

local function IsKonamiGame(Content)
	return (string.lower(string.sub(Content.Developer, 0, 6)) == "konami")
end

local function IsMicrosoftGame(Content)
	return	(string.lower(string.sub(Content.Developer, 0, 9)) == "microsoft") or 
					(string.lower(string.sub(Content.Developer, 0, 3)) == "mgs")
end

local function IsPopCapGame(Content)
	return (string.lower(string.sub(Content.Developer, 0, 6)) == "popcap")
end

local function IsRockStarGame(Content)
	return (string.lower(string.sub(Content.Developer, 0, 8)) == "rockstar")
end

local function IsSegaGame(Content)
	return (string.lower(string.sub(Content.Developer, 0, 4)) == "sega")
end

local function IsSquareEnixGame(Content)
	return (string.lower(string.sub(Content.Developer, 0, 6)) == "square")
end

local function IsTHQGame(Content)
	return (string.lower(string.sub(Content.Developer, 0, 3)) == "thq")
end

local function IsUbisoftGame(Content)
	return (string.lower(string.sub(Content.Developer, 0, 7)) == "ubisoft")
end

local function IsWarnerBrosGame(Content)
	return	(string.lower(string.sub(Content.Developer, 0, 11)) == "warner bros") or 
					(string.lower(string.sub(Content.Developer, 0, 8)) == "wb games") or 
					(string.lower(string.sub(Content.Developer, 0, 15)) == "warner brothers")
end

GameListFilterCategories.Developers = {
	EA = function(Content) return IsEaGame(Content) end,
	Activision = function(Content) return IsActivisionGame(Content) end,
	["Bandai Namco"] = function(Content) return IsBandaiNamcoGame(Content) end,
	Bethesda = function(Content) return IsBethesdaGame(Content) end,
	Capcom = function(Content) return IsCapcomGame(Content) end,
	Codemasters = function(Content) return IsCodeMastersGame(Content) end,
	Disney = function(Content) return IsDisneyGame(Content) end,
	Eidos = function(Content) return IsEidosGame(Content) end,
	Konami = function(Content) return IsKonamiGame(Content) end,
	Microsoft = function(Content) return IsMicrosoftGame(Content) end,
	PopCap = function(Content) return IsPopCapGame(Content) end,
	Rockstar = function(Content) return IsRockStarGame(Content) end,
	Sega = function(Content) return IsSegaGame(Content) end,
	["Square Enix"] = function(Content) return IsSquareEnixGame(Content) end,
	THQ = function(Content) return IsTHQGame(Content) end,
	Ubisoft = function(Content) return IsUbisoftGame(Content) end,
	["Warner Bros"] = function(Content) return IsWarnerBrosGame(Content) end
}