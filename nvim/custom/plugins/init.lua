return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["lukas-reineke/lsp-format.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.lspformat"
    end,
  },
  ["mhartington/formatter.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.formatter"
    end,
  },
  ["rhysd/vim-clang-format"] = {},
  ["github/copilot.vim"] = {},
  ["tzachar/cmp-tabnine"] = {
    run = "./install.sh",
  },
  ["simrat39/rust-tools.nvim"] = {
    after = { "nvim-lspconfig", "lsp-format.nvim" },
    config = function()
      require "custom.plugins.rust-tools"
    end,
  },
  ["fatih/vim-go"] = {
    config = function()
      require "custom.plugins.vimgo"
    end,
  },
  ["buoto/gotests-vim"] = {},

  -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["ruanyl/vim-gh-line"] = {},
  ["nvim-telescope/telescope-fzf-native.nvim"] = {
    run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
  },
}
