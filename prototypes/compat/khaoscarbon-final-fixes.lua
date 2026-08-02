local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["khaoscarbon"] then
  khaoslib_recipe:load("crucible")
    :set {categories = {"founding"}}
    :commit()
end
