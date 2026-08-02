local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_technology:load {
  type = "technology",
  name = "burner-foundry",
  localised_name = {"entity-name.burner-foundry"},
} :set_icons {{icon = "__khaosfoundry__/graphics/technology/foundry-sa.png", icon_size = 256, tint = {0.5, 0.5, 0.5}}}
  :set_prerequisites {"automation"}
  :set_unit {
    time = 10,
    count = 25,
    ingredients = {
      {"automation-science-pack", 1},
    },
  }
  :add_unlock_recipe("burner-foundry")
  :commit()
