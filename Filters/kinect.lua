--TODO: get complete list
local title_id_list = (
  0x373307D2,0x373307D9,0x415608AE,0x415608D7,0x464F07E1,
  0x4B4E0819,0x4D4A07DA,0x4D4A07E7,0x4D4A07F6,0x4D5308B3,
  0x4D5308C9,0x4D5308ED,0x4D53093B,0x4D5309B6,0x4D5309C1,
  0x4D5309C1,0x4D5309D6,0x4D5309DF,0x4E4D0848,0x4E4D084E,
  0x4d53090e,0x4d5309b6,0x53450003,0x53450088,0x54510089,
  0x5451085B,0x54510873,0x54540890,0x545607D3,0x5553084F,
  0x5553084e,0x55530885,0x55530887,0x55530888,0x55530890,
  0x555308B2,0x555308B5,0x555308CC,0x555308CD,0x555308D9,
  0x5752080C,0x57520826,0x58410A69,0x58410b79,0x584112AC,
  0x584112AF,0x584112B3,0x584112B4,0x584112b1,0x584112c9,
  0x58411407
)

local function is_kinect(Content)
  if bit32.btest(Content.Flags, ContentFlag.KinectCompatible) then
    return true
  end

  for _, title_id in ipairs(title_id_list) do
    if Content.TitleId == title_id then
      return true
    end
  end

  return false
end

GameListFilterCategories.User["Show Kinect"] = function(Content)
  return is_kinect(Content)
end

GameListFilterCategories.User["Hide Kinect"] = function(Content)
  return not is_kinect(Content)
end