local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

local steel_plate = khaoslib_recipe:load("steel-plate"):set {categories = {"founding"}}
steel_plate:set {energy_required = steel_plate:get().energy_required * 4/5}

if settings.startup["khaosfoundry-hydrocarbon"].value ~= "none" then
  steel_plate:replace_ingredient("iron-plate", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
  :add_ingredient {type = "item", name = settings.startup["khaosfoundry-hydrocarbon"].value, amount = 1}
end

steel_plate:commit()

khaoslib_technology:load("steel-processing"):add_prerequisite("burner-foundry"):commit()
