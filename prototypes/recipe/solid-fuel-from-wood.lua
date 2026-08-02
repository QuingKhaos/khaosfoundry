local khaoslib_entity = require("__khaoslib__.prototypes.entity")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaosfoundry-hydrocarbon"].value == "solid-fuel" and settings.startup["khaosfoundry-hydrocarbon-from-wood"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "solid-fuel-from-wood",
    subgroup = "raw-material",
    order = "b[chemistry]-ab[solid-fuel]",
    enabled = false,
    auto_recycle = false,
    allow_productivity = true,
    energy_required = 3.2,
    main_product = "solid-fuel",
  } :set_categories {"founding"}
    :set_icons {
      {icon = "__base__/graphics/icons/solid-fuel.png", icon_size = 64},
      {icon = "__base__/graphics/icons/wood.png", icon_size = 64, scale = 0.25, shift = {8, -8}},
    }
    :set_ingredients {
      {type = "item", name = "coal", amount = 3},
      {type = "item", name = "wood", amount = 2},
    }
    :set_results {
      {type = "item", name = "solid-fuel", amount = 1},
    }
    :commit()
end
