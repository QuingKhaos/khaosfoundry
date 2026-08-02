require ("__core__.lualib.sound-util")
require ("__core__.lualib.util")
require ("__khaosfoundry__.prototypes.entity.circuit-network-sa")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local khaoslib_entity = require("__khaoslib__.prototypes.entity")
local sounds = require("__base__.prototypes.entity.sounds")

local entity = khaoslib_entity:load {
  type = "assembling-machine",
  name = "burner-foundry",
  flags = {"placeable-neutral", "player-creation"},
  fast_replaceable_group = "basic-foundry",
  max_health = 300,
  corpse = "medium-small-remnants",
  collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
  selection_box = {{-2, -2}, {2, 2}},
  damaged_trigger_effect = hit_effects.entity(),
  module_slots = 3,
  allowed_effects = {"consumption", "speed", "productivity", "pollution"},
  crafting_categories = {"founding"},
  crafting_speed = 4,
  energy_source = {
    type = "burner",
    fuel_categories = {"chemical"},
    effectivity = 1,
    emissions_per_minute = {pollution = 8},
    fuel_inventory_size = 1,
    smoke = {
      {
        name = "smoke",
        frequency = 20,
        position = {1, -1.7},
        starting_vertical_speed = 0.1,
        starting_frame_deviation = 60,
      },
    },
  },
  energy_usage = "180kW",
  perceived_performance = {minimum = 0.25, maximum = 20},
  open_sound = sounds.steam_open,
  close_sound = sounds.steam_close,
  working_sound = {
    sound = {
      filename = "__base__/sound/furnace.ogg",
      volume = 0.5,
      audible_distance_modifier = 0.6,
    },
  },
  graphics_set = {
    animation = {
      layers = {
        {
          filename = "__khaosfoundry__/graphics/entity/burner-foundry/burner-foundry.png",
          priority = "high",
          width = 280,
          height = 239,
          frame_count = 1,
          shift = util.by_pixel(8, 4),
          scale = 0.5,
        },
      },
    },
    working_visualisations = {
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        animation = {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
          priority = "extra-high",
          line_length = 8,
          width = 41,
          height = 100,
          frame_count = 48,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(-1, 9),
          scale=1.1,
        },
      }
    },
  },
} :set_icons {{icon = "__khaosfoundry__/graphics/icons/burner-foundry.png", icon_size = 64}}
  :set_minable {mining_time = 0.2, result = "burner-foundry"}

if mods["quality"] then
  entity:set {
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
  }
end

if feature_flags["freezing"] then
  entity:set {
    heating_energy = "300kW",
  }
end

entity:commit()
