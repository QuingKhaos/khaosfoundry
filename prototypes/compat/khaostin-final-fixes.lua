local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["khaostin"] then
  khaoslib_recipe:load("solder")
    :set {categories = {"founding", "hand-crafting"}}
    :commit()
end
