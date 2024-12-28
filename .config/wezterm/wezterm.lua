-- Pull in the wezterm API
local wezterm = require("wezterm")

-- Pull in modules
local general = require("config.general")
local appearance = require("config.appearance")

-- This will hold the configuration.
local config = {}

-- Apply configs from modules
general.apply_to_config(config)
appearance.apply_to_config(config)

return config
