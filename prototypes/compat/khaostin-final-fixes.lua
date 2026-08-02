local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["khaostin"] then
  khaoslib_recipe:load("solder")
    :set {categories = {"founding", "hand-crafting"}}
    :commit()
end
