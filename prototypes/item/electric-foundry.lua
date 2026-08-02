local item_sounds = require("__base__.prototypes.item_sounds")
local khaoslib_item = require("__khaoslib__.prototypes.item")

local item = khaoslib_item:load {
  type = "item",
  name = "electric-foundry",
  localised_name = {"entity-name.electric-foundry"},
  subgroup = "smelting-machine",
  order = "d[electric-foundry]",
  place_result = "electric-foundry",
  stack_size = 20,
  weight = 200 * kg,

  inventory_move_sound = item_sounds.steam_inventory_move,
  pick_sound = item_sounds.steam_inventory_pickup,
  drop_sound = item_sounds.steam_inventory_move,
}

if feature_flags["expansion"] then
  item:set_icons {{icon = "__khaosfoundry__/graphics/icons/foundry-sa.png", icon_size = 64}}
else
  item:set_icons {{icon = "__khaosfoundry__/graphics/icons/electric-foundry.png", icon_size = 64}}
end

item:commit()
