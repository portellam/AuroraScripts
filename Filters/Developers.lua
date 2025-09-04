local function is_developer(content, developer, length)
	return string.lower(string.sub(content.Developer, 0, length)) == developer
end

local function is_activision_game(content)
	return is_developer(content, "activision", 10)
end

local function is_bandai_namco_game(content)
	return is_developer(content, "bandai", 6)
			or is_developer(content, "namco", 5)
end

local function is_bethesda_game(content)
	return is_developer(content, "bethesda", 8)
end

local function is_capcom_game(content)
	return is_developer(content, "capcom", 6)
end

local function is_code_masters_game(content)
	return is_developer(content, "codemasters", 11)
end

local function is_disney_game(content)
	return is_developer(content, "disney", 6)
end

local function is_ea_game(content)
	return is_developer(content, "electronic arts", 15)
			or is_developer(content, "ea", 2)
end

local function is_eidos_game(content)
	return is_developer(content, "eidos", 5)
end

local function is_konami_game(content)
	return is_developer(content, "konami", 6)
end

local function is_microsoft_game(content)
	return is_developer(content, "microsoft", 9)
			or is_developer(content, "mgs", 3)
end

local function is_pop_cap_game(content)
	return is_developer(content, "popcap", 6)
end

local function is_rockstar_game(content)
	return is_developer(content, "rockstar", 8)
end

local function is_sega_game(content)
	return is_developer(content, "sega", 4)
end

local function is_square_enix_game(content)
	return is_developer(content, "square", 6)
end

local function is_thq_game(content)
	return is_developer(content, "thq", 3)
end

local function is_ubisoft_game(content)
	return is_developer(content, "ubisoft", 7)
end

local function is_warner_bros_game(content)
	return 	is_developer(content, "warner bros", 11) or 
					is_developer(content, "wb games", 8) or 
					is_developer(content, "warner brothers", 15)
end

GameListFilterCategories.Developers = {
	EA = function(content) return is_ea_game(content) end,
	Activision = function(content) return is_activision_game(content) end,
	["Bandai Namco"] = function(content) return is_bandai_namco_game(content) end,
	Bethesda = function(content) return is_bethesda_game(content) end,
	Capcom = function(content) return is_capcom_game(content) end,
	Codemasters = function(content) return is_code_masters_game(content) end,
	Disney = function(content) return is_disney_game(content) end,
	Eidos = function(content) return is_eidos_game(content) end,
	Konami = function(content) return is_konami_game(content) end,
	Microsoft = function(content) return is_microsoft_game(content) end,
	PopCap = function(content) return is_pop_cap_game(content) end,
	Rockstar = function(content) return is_rockstar_game(content) end,
	Sega = function(content) return is_sega_game(content) end,
	["Square Enix"] = function(content) return is_square_enix_game(content) end,
	THQ = function(content) return is_thq_game(content) end,
	Ubisoft = function(content) return is_ubisoft_game(content) end,
	["Warner Bros"] = function(content) return is_warner_bros_game(content) end
}