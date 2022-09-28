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
    ["williamboman/mason.nvim"] = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        -- "css-lsp",
        -- "html-lsp",
        -- "typescript-language-server",
        -- "deno",
        -- "emmet-ls",
        -- "json-lsp",

        -- backend
        "gopls",

        -- shell
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
