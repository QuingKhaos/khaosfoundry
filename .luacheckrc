--- @diagnostic disable: undefined-global

include_files = {
  "**/*.lua",
  ".luacheckrc",
}

exclude_files = {
  ".git/**",
  ".lua/**",
  ".luarocks/**",
}

-- Settings stage
files["settings/**/*.lua"] = {
  std = "lua52",
  globals = {
    "data",
    "log",
    "mods",
    "serpent",
    "util",
  },
}

files["settings*.lua"] = files["settings/**/*.lua"]
files[".dev/**/settings*.lua"] = files["settings/**/*.lua"]

-- Prototype stage
files["prototypes/**/*.lua"] = {
  std = "lua52",
  globals = {
    "data",
    "defines",
    "feature_flags",
    "helpers",
    "log",
    "mods",
    "serpent",
    "settings",
    -- __core__.lualib.util
    "util",
    "gram",
    "grams",
    "kg",
    "tons",
    "second",
    "minute",
    "hour",
    "meter",
    "kilometer",
    -- __core__.lualib.circuit-connector-sprites
    "circuit_connector_definitions",
    "default_circuit_wire_max_distance",
    -- __base__.prototypes.factoriopedia-util
    "make_resource",
  },
}

files["data*.lua"] = files["prototypes/**/*.lua"]
files[".dev/**/data*.lua"] = files["prototypes/**/*.lua"]

-- Runtime stage
files["scripts/**/*.lua"] = {
  std = "lua52",
  globals = {
    "commands",
    "defines",
    "game",
    "helpers",
    "log",
    "prototypes",
    "rcon",
    "rendering",
    "remote",
    "script",
    "serpent",
    "settings",
    "storage",
  },
}

files["control.lua"] = files["scripts/**/*.lua"]

-- Code quality settings
max_line_length = false
