local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_technology:load {
  type = "technology",
  name = "electric-foundry",
  localised_name = {"entity-name.electric-foundry"},
} :set_icons {{icon = "__khaosfoundry__/graphics/technology/foundry-sa.png", icon_size = 256}}
  :set_prerequisites {"automation-3"}
  :set_unit {
    time = 45,
    count = 200,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"production-science-pack", 1},
    },
  }
  :add_unlock_recipe("electric-foundry")
  :commit()
