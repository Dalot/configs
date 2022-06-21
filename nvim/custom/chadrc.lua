-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "jellybeans",
}

local override = require "custom.override"

M.plugins = {

  options = {
    lspconfig = {
      setup_lspconf = require "custom.plugins.lspconfig",
    },
  },

  override = {
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter
  },

  remove = {
    -- "windwp/nvim-autopairs",
    -- "fatih/go-vim",
  },

  user = require "custom.plugins"
}

M.mappings = require "custom.mappings"

return M
