local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

local recipe = khaoslib_recipe:load {
  type = "recipe",
  name = "burner-foundry",
  subgroup = "smelting-machine",
  order = "d[burner-foundry]",
  enabled = false,
  allow_productivity = true,
  energy_required = 0.5,
  main_product = "burner-foundry",
} :set_categories {"crafting"}
  :set_ingredients {
    {type = "item", name = "stone-brick", amount = 20},
    {type = "item", name = "iron-plate", amount = 10},
    {type = "item", name = "copper-plate", amount = 5},
  }
  :set_results {
    {type = "item", name = "burner-foundry", amount = 1},
  }

if mods["khaoslead"] then
  recipe:add_ingredient {type = "item", name = "lead-plate", amount = 8}
end

if mods["khaossilicon"] then
  recipe:add_ingredient {type = "item", name = "silica", amount = 20}
end

recipe:commit()
