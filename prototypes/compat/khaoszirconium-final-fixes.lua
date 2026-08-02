local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["khaoszirconium"] and settings.startup["khaoszirconium-more"].value then
  khaoslib_recipe:load("cermet")
    :set {categories = {"founding"}}
    :commit()
end
