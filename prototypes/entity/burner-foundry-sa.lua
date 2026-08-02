require ("__core__.lualib.sound-util")
require ("__core__.lualib.circuit-connector-sprites")
require ("__core__.lualib.util")
require ("__khaosfoundry__.prototypes.entity.circuit-network-sa")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local khaoslib_entity = require("__khaoslib__.prototypes.entity")
local sounds = require("__base__.prototypes.entity.sounds")

local entity = khaoslib_entity:load {
  type = "assembling-machine",
  name = "burner-foundry",
  flags = {"placeable-neutral", "player-creation"},
  fast_replaceable_group = "foundry",
  max_health = 300,
  --corpse = "burner-foundry-remnants",
  --dying_explosion = "basic-foundry-explosion",
  circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
  circuit_connector = circuit_connector_definitions["burner-foundry"],
  collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
  selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
  damaged_trigger_effect = hit_effects.entity(),
  drawing_box_vertical_extension = 1.3,
  effect_receiver = {base_effect = {productivity = 0.5}},
  module_slots = 3,
  icon_draw_specification = {scale = 2, shift = {0, -0.3}},
  icons_positioning = {
    {inventory_index = defines.inventory.crafter_modules, shift = {0, 1.25}}
  },
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
  use_mirroring = true,
  graphics_set = require("__khaosfoundry__.prototypes.entity.burner-foundry-pictures-sa").graphics_set,
  open_sound = sounds.steam_open,
  close_sound = sounds.steam_close,
  working_sound = {
    sound = {
      filename = "__khaosfoundry__/sound/entity/foundry/foundry.ogg",
      volume = 0.5,
      audible_distance_modifier = 0.6,
    },
    fade_in_ticks = 4,
    fade_out_ticks = 20,
    sound_accents = {
      {sound = {filename = "__khaosfoundry__/sound/entity/foundry/foundry-pipe-out.ogg", volume = 0.9, audible_distance_modifier = 0.4}, frame = 2},
      {sound = {filename = "__khaosfoundry__/sound/entity/foundry/foundry-slide-close.ogg", volume = 0.65, audible_distance_modifier = 0.3}, frame = 18},
      {sound = {filename = "__khaosfoundry__/sound/entity/foundry/foundry-clamp.ogg", volume = 0.45, audible_distance_modifier = 0.3}, frame = 39},
      {sound = {filename = "__khaosfoundry__/sound/entity/foundry/foundry-slide-stop.ogg", volume = 0.7, audible_distance_modifier = 0.4}, frame = 43},
      {sound = {variations = sound_variations("__khaosfoundry__/sound/entity/foundry/foundry-fire-whoosh", 3, 0.8), audible_distance_modifier = 0.3}, frame = 64},
      {sound = {filename = "__khaosfoundry__/sound/entity/foundry/foundry-metal-clunk.ogg", volume = 0.65, audible_distance_modifier = 0.4}, frame = 64},
      {sound = {filename = "__khaosfoundry__/sound/entity/foundry/foundry-slide-open.ogg", volume = 0.65, audible_distance_modifier = 0.3}, frame = 74},
      {sound = {filename = "__khaosfoundry__/sound/entity/foundry/foundry-pipe-in.ogg", volume = 0.75, audible_distance_modifier = 0.4}, frame = 106},
      {sound = {filename = "__khaosfoundry__/sound/entity/foundry/foundry-smoke-puff.ogg", volume = 0.8, audible_distance_modifier = 0.3}, frame = 106},
      {sound = {variations = sound_variations("__khaosfoundry__/sound/entity/foundry/foundry-pour", 2, 0.7)}, frame = 110},
      {sound = {filename = "__khaosfoundry__/sound/entity/foundry/foundry-rocks.ogg", volume = 0.65, audible_distance_modifier = 0.3}, frame = 120},
      {sound = {filename = "__khaosfoundry__/sound/entity/foundry/foundry-blade.ogg", volume = 0.7}, frame = 126},
    },
    max_sounds_per_prototype = 2,
  },
  fluid_boxes = {
    {
      production_type = "input",
      pipe_picture = util.empty_sprite(),
      pipe_picture_frozen = require("__khaosfoundry__.prototypes.entity.burner-foundry-pictures-sa").pipe_picture_frozen,
      pipe_covers = pipecoverspictures(),
      always_draw_covers = false,
      enable_working_visualisations = { "input-pipe" },
      volume = 1000,
      pipe_connections = {{flow_direction="input", direction = defines.direction.south, position = {-1, 2}}},
    },
    {
      production_type = "input",
      pipe_picture = util.empty_sprite(),
      pipe_picture_frozen = require("__khaosfoundry__.prototypes.entity.burner-foundry-pictures-sa").pipe_picture_frozen,
      pipe_covers = pipecoverspictures(),
      always_draw_covers = false,
      enable_working_visualisations = { "input-pipe" },
      volume = 1000,
      pipe_connections = {{flow_direction="input", direction = defines.direction.south, position = {1, 2}}},
    },
    {
      production_type = "output",
      pipe_picture = util.empty_sprite(),
      pipe_picture_frozen = require("__khaosfoundry__.prototypes.entity.burner-foundry-pictures-sa").pipe_picture_frozen,
      pipe_covers = pipecoverspictures(),
      always_draw_covers = false,
      enable_working_visualisations = { "output-pipe" },
      volume = 100,
      pipe_connections = {{flow_direction="output", direction = defines.direction.north, position = {-1, -2}}},
    },
    {
      production_type = "output",
      pipe_picture = util.empty_sprite(),
      pipe_picture_frozen = require("__khaosfoundry__.prototypes.entity.burner-foundry-pictures-sa").pipe_picture_frozen,
      pipe_covers = pipecoverspictures(),
      always_draw_covers = false,
      enable_working_visualisations = { "output-pipe" },
      volume = 100,
      pipe_connections = {{flow_direction="output", direction = defines.direction.north, position = {1, -2}}},
    },
  },
  fluid_boxes_off_when_no_fluid_recipe = true,
  water_reflection = {
    --- @diagnostic disable-next-line: generic-constraint-mismatch
    pictures = util.sprite_load("__khaosfoundry__/graphics/entity/foundry-sa/foundry-reflection", {
      scale = 5,
      shift = {0,2},
    }),
    rotate = false,
  }
} :set_icons {{icon = "__khaosfoundry__/graphics/icons/foundry-sa.png", icon_size = 64, tint = {0.5, 0.5, 0.5}}}
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
