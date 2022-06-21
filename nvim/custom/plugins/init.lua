return {
  ["lukas-reineke/lsp-format.nvim"] = {
      after = "nvim-lspconfig",
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
}
