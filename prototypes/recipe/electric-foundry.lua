local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

local recipe = khaoslib_recipe:load {
  type = "recipe",
  name = "electric-foundry",
  subgroup = "smelting-machine",
  order = "d[electric-foundry]",
  enabled = false,
  allow_productivity = true,
  energy_required = 0.5,
  main_product = "electric-foundry",
} :set_categories {"crafting"}
  :set_ingredients {
    {type = "item", name = "burner-foundry", amount = 1},
    {type = "item", name = "steel-plate", amount = 10},
    {type = "item", name = "processing-unit", amount = 4},
    {type = "item", name = "concrete", amount = 10},
  }
  :set_results {
    {type = "item", name = "electric-foundry", amount = 1},
  }

if mods["khaoszirconium"] then
  recipe:add_ingredient {type = "item", name = "zirconia", amount = 10}
else
  recipe:add_ingredient {type = "item", name = "stone-brick", amount = 10}
end

recipe:commit()
