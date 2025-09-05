local module = require("get_filters")
local is_network_backup = (string.lower(Content.Root) == "connx:\\")

module.set_filters("ConnectX", is_network_backup)