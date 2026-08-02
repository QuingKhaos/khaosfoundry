local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["khaossilicon"] then
  local silicon = khaoslib_recipe:load("silicon")
    :set {categories = {"founding"}}

  if settings.startup["khaosfoundry-hydrocarbon"].value ~= "none" then
    silicon:add_ingredient {type = "item", name = settings.startup["khaosfoundry-hydrocarbon"].value, amount = 1}
  end

  silicon:commit()
end
