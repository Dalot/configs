-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "jellybeans",
}

local userPlugins = require "custom.plugins"
local pluginConfs = require "custom.plugins.configs"

M.plugins = {

  override = {
    ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
  },
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },

  user = userPlugins,
}

M.mappings = require "custom.mappings"


return M
