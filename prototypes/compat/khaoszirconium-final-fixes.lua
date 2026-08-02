local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["khaoszirconium"] and settings.startup["khaoszirconium-more"].value then
  khaoslib_recipe:load("cermet")
    :set {categories = {"founding"}}
    :commit()
end
