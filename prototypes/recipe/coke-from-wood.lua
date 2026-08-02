local khaoslib_entity = require("__khaoslib__.prototypes.entity")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaosfoundry-hydrocarbon"].value == "coke" and settings.startup["khaosfoundry-hydrocarbon-from-wood"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "coke-from-wood",
    subgroup = "raw-material",
    order = "b1[chemistry]-aa[coke]",
    enabled = false,
    auto_recycle = false,
    allow_productivity = true,
    energy_required = 3.2,
    main_product = "coke",
  } :set_categories {"founding"}
    :set_icons {
      {icon = "__khaosfoundry__/graphics/icons/coke.png", icon_size = 64},
      {icon = "__base__/graphics/icons/wood.png", icon_size = 64, scale = 0.25, shift = {8, -8}},
    }
    :set_ingredients {
      {type = "item", name = "coal", amount = 1},
      {type = "item", name = "wood", amount = 2},
    }
    :set_results {
      {type = "item", name = "coke", amount = 1},
    }
    :commit()
end
