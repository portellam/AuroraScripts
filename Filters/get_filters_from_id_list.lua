local module = require("get_filters")

local function list_has_match(Content, title_id_list)
  for _, title_id in ipairs(title_id_list) do
    if Content.TitleId == title_id then
      return true
    end
  end

  return false
end

local function set_filters(Content, name, title_id_list)
  local is_match = function(Content, title_id_list)
    return list_has_match(Content)
  end

  module.set_filters(name, is_match)
end

local function set_filters(Content, name, title_id_list, has_match)
  local is_match = (
    function(Content, title_id_list)
      return list_has_match(Content)
    end
    or has_match
  )
 
  module.set_filters(name, is_match)
end