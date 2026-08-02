require("__khaosfoundry__.prototypes.categories.recipe-category")

if feature_flags["expansion"] then
  require("__khaosfoundry__.prototypes.entity.burner-foundry-sa")
  require("__khaosfoundry__.prototypes.entity.electric-foundry-sa")
else
  require("__khaosfoundry__.prototypes.entity.burner-foundry")
  require("__khaosfoundry__.prototypes.entity.electric-foundry")
end

require("__khaosfoundry__.prototypes.item.burner-foundry")
require("__khaosfoundry__.prototypes.item.electric-foundry")
require("__khaosfoundry__.prototypes.item.coke")

require("__khaosfoundry__.prototypes.recipe.burner-foundry")
require("__khaosfoundry__.prototypes.recipe.electric-foundry")
require("__khaosfoundry__.prototypes.recipe.coke")
require("__khaosfoundry__.prototypes.recipe.coke-from-wood")
require("__khaosfoundry__.prototypes.recipe.solid-fuel-from-coal")
require("__khaosfoundry__.prototypes.recipe.solid-fuel-from-wood")

require("__khaosfoundry__.prototypes.technology.burner-foundry")
require("__khaosfoundry__.prototypes.technology.electric-foundry")

require("__khaosfoundry__.prototypes.compat.base")
