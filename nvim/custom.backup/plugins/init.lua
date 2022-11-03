return {
   ["lukas-reineke/lsp-format.nvim"] = {
      after = {"nvim-lspconfig", "simrat39/rust-tools"},
      config = function()
         require "custom.plugins.lspformat"
      end,
   },
  ["rhysd/vim-clang-format"] = {},
  ["fatih/vim-go"] = {
    config = function()
      require "custom.plugins.vimgo"
    end,
  },
  ["buoto/gotests-vim"] = {},
  ["simrat39/rust-tools.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.rust-tools"
    end,
  },

  -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
       require "custom.plugins.null-ls"
    end,
  },

  ['ruanyl/vim-gh-line'] = {},
  ['nvim-telescope/telescope-fzf-native.nvim'] = {
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
  },
}
