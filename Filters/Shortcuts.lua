local module = require("get_filters")

local function is_quick_boot(Content)
  local title = string.lower(Content.Title)
  return title:gsub("%s+", "") == "quickboot"
end

local is_match = function(Content)
  return is_quick_boot(Content)
end

module.set_filters("Shortcuts", is_match)