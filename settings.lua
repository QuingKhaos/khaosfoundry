local khaoslib_setting = require("__khaoslib__.settings.setting")

khaoslib_setting:load {
  type = "string-setting",
  name = "khaosfoundry-hydrocarbon",
  setting_type = "startup",
  default_value = "coke",
  allowed_values = {"coke", "solid-fuel", "coal", "none"},
  order = "a[setttings]-a[hydrocarbon]",
} :commit()

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaosfoundry-hydrocarbon-from-wood",
  setting_type = "startup",
  default_value = false,
  order = "a[setttings]-b[hydrocarbon-from-wood]",
} :commit()
