-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "jellybeans",
}

M.plugins = {

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      ensure_installed = {
        "html",
        "css",
        "go",
        "vim",
        "javascript",
        "typescript",
        "proto",
        "rust",
        "toml",
        "markdown",
        "make",
        "yaml",
        "json",
      },
    },
  },

  -- Portable package manager for Neovim that runs everywhere Neovim runs.
  -- Easily install and manage LSP servers, DAP servers, linters, and formatters.
  ["williamboman/mason.nvim"] = {
    override_options = {
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

  user = require "custom.plugins",
}

M.mappings = require "custom.mappings"

return M
