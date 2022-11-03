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
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,

    -- Portable package manager for Neovim that runs everywhere Neovim runs.
    -- Easily install and manage LSP servers, DAP servers, linters, and formatters.
    ["williamboman/mason.nvim"] = {
      ensure_installed = {
        "lua-language-server",
        "stylua",

        "rust-analyzer",

        "gopls",

        "shfmt",
        "shellcheck",
      },
    },
  },

  remove = {
    -- "windwp/nvim-autopairs",
    -- "fatih/go-vim",
  },

  user = require "custom.plugins"
}

M.mappings = require "custom.mappings"

return M
