local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["khaoscarbon"] then
  khaoslib_recipe:load("crucible")
    :set {categories = {"founding"}}
    :commit()
end
