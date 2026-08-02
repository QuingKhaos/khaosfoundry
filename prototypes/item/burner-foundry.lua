local item_sounds = require("__base__.prototypes.item_sounds")
local khaoslib_item = require("__khaoslib__.prototypes.item")

local item = khaoslib_item:load {
  type = "item",
  name = "burner-foundry",
  localised_name = {"entity-name.burner-foundry"},
  subgroup = "smelting-machine",
  order = "d[burner-foundry]",
  place_result = "burner-foundry",
  stack_size = 20,
  weight = 200 * kg,

  inventory_move_sound = item_sounds.steam_inventory_move,
  pick_sound = item_sounds.steam_inventory_pickup,
  drop_sound = item_sounds.steam_inventory_move,
}

if feature_flags["expansion"] then
  item:set_icons {{icon = "__khaosfoundry__/graphics/icons/foundry-sa.png", icon_size = 64, tint = {0.5, 0.5, 0.5}}}
else
  item:set_icons {{icon = "__khaosfoundry__/graphics/icons/burner-foundry.png", icon_size = 64}}
end

item:commit()
