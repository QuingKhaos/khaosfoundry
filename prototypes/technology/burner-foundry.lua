local khaoslib_technology = require("__khaoslib__.prototypes.technology")

local tech = khaoslib_technology:load {
  type = "technology",
  name = "burner-foundry",
  localised_name = {"entity-name.burner-foundry"},
} :set_prerequisites {"automation"}
  :set_unit {
    time = 10,
    count = 25,
    ingredients = {
      {"automation-science-pack", 1},
    },
  }
  :add_unlock_recipe("burner-foundry")

if feature_flags["expansion"] then
  tech:set_icons {{icon = "__khaosfoundry__/graphics/technology/foundry-sa.png", icon_size = 256, tint = {0.5, 0.5, 0.5}}}
else
  tech:set_icons {{icon = "__khaosfoundry__/graphics/technology/burner-foundry.png", icon_size = 256}}
end

if settings.startup["khaosfoundry-hydrocarbon"].value == "coke" then
  tech:add_unlock_recipe("coke")
  if settings.startup["khaosfoundry-hydrocarbon-from-wood"].value then
    tech:add_unlock_recipe("coke-from-wood")
  end
elseif settings.startup["khaosfoundry-hydrocarbon"].value == "solid-fuel" then
  tech:add_unlock_recipe("solid-fuel-from-coal")
  if settings.startup["khaosfoundry-hydrocarbon-from-wood"].value then
    tech:add_unlock_recipe("solid-fuel-from-wood")
  end
end

tech:commit()
