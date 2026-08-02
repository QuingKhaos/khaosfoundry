local khaoslib_item = require("__khaoslib__.prototypes.item")

if settings.startup["khaosfoundry-hydrocarbon"].value == "coke" then
  khaoslib_item:load {
    type = "item",
    name = "coke",
    subgroup = "raw-material",
    order = "b1[chemistry]-a[coke]",
    stack_size = 50,

    fuel_category = "chemical",
    fuel_value = "10MJ",
    fuel_acceleration_multiplier = 1.2,
    fuel_top_speed_multiplier = 1,

    pictures = {
      {filename = "__khaosfoundry__/graphics/icons/coke.png", size = 64, scale = 0.5},
      {filename = "__khaosfoundry__/graphics/icons/coke-1.png", size = 64, scale = 0.5},
      {filename = "__khaosfoundry__/graphics/icons/coke-2.png", size = 64, scale = 0.5},
      {filename = "__khaosfoundry__/graphics/icons/coke-3.png", size = 64, scale = 0.5},
    },
  } :set_icons {{icon = "__khaosfoundry__/graphics/icons/coke.png", icon_size = 64}}
    :commit()
end
