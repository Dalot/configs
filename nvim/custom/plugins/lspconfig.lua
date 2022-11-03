-- local M = {}
--
-- M.setup_lsp = function(attach, capabilities)
--   local lspconfig = require "lspconfig"
--
--   local servers = { "html", "cssls", "bashls", "emmet_ls", "tsserver", "clangd", "gopls", "golangci_lint_ls", "ltex" }
--
--   for _, lsp in ipairs(servers) do
--     lspconfig[lsp].setup {
--       on_attach = attach,
--       capabilities = capabilities,
--     }
--   end
--
--   lspconfig["rust_analyzer"].setup.settings = {
--     ["rust_analyzer"] = {
--       cargo = {
--         buildScripts = {
--           enable = true,
--         },
--       },
--     },
--   }
-- end

-- return M
-- custom.plugins.lspconfig

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "bashls", "emmet_ls", "tsserver", "clangd", "gopls", "golangci_lint_ls", "ltex" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.rust_analyzer.setup {
  cargo = {
    buildScripts = {
      enable = true,
    },
  },
}
