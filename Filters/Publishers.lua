local function is_publisher(content, publisher, length)
	return string.lower(string.sub(content.Publisher, 0, length)) == publisher
end

local function is_activision(content)
	return is_publisher(content, "activision", 10)
end

local function is_bandai_namco(content)
	return is_publisher(content, "bandai", 6)
	or is_publisher(content, "namco", 5)
end

local function is_bethesda(content)
	return is_publisher(content, "bethesda", 8)
end

local function is_capcom(content)
	return is_publisher(content, "capcom", 6)
end

local function is_code_masters(content)
	return is_publisher(content, "codemasters", 11)
end

local function is_disney(content)
	return is_publisher(content, "disney", 6)
end

local function is_ea(content)
	return is_publisher(content, "electronic arts", 15)
			or is_publisher(content, "ea", 2)
end

local function is_eidos(content)
	return is_publisher(content, "eidos", 5)
end

local function is_konami(content)
	return is_publisher(content, "konami", 6)
end

local function is_microsoft(content)
	return is_publisher(content, "microsoft", 9)
			or is_publisher(content, "mgs", 3)
end

local function is_pop_cap(content)
	return is_publisher(content, "popcap", 6)
end

local function is_rockstar(content)
	return is_publisher(content, "rockstar", 8)
end

local function is_sega(content)
	return is_publisher(content, "sega", 4)
end

local function is_square_enix(content)
	return is_publisher(content, "square", 6)
end

local function is_thq(content)
	return is_publisher(content, "thq", 3)
end

local function is_ubisoft(content)
	return is_publisher(content, "ubisoft", 7)
end

local function is_warner_bros(content)
	return is_publisher(content, "warner bros", 11)
			or is_publisher(content, "wb games", 8)
			or is_publisher(content, "warner brothers", 15)
end

GameListFilterCategories.Publishers = {
	EA = is_ea,
	Ubisoft = is_ubisoft,
	["Warner Bros"] = is_warner_bros,
	THQ = is_thq,
	Activision = is_activision,
	["Bandai Namco"] = is_bandai_namco,
	Capcom = is_capcom,
	Codemasters = is_code_masters,
	Konami = is_konami,
	Microsoft = is_microsoft,
	PopCap = is_pop_cap,
	Rockstar = is_rockstar,
	Sega = is_sega,
	["Square Enix"] = is_square_enix,
	Bethesda = is_bethesda,
	Eidos = is_eidos,
	Disney = is_disney
}