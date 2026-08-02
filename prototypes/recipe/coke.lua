local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaosfoundry-hydrocarbon"].value == "coke" then
  khaoslib_recipe:load {
    type = "recipe",
    name = "coke",
    subgroup = "raw-material",
    order = "b1[chemistry]-a[coke]",
    enabled = false,
    auto_recycle = false,
    allow_productivity = true,
    energy_required = 3.2,
    main_product = "coke",
  } :set_categories {"founding"}
    :set_ingredients {
      {type = "item", name = "coal", amount = 2},
    }
    :set_results {
      {type = "item", name = "coke", amount = 1},
    }
    :commit()
end
