require("lsp-format").setup {
  go = {},
}
require "lspconfig".gopls.setup { on_attach = require "lsp-format".on_attach }
