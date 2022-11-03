-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.
vim.g.mapleader = ","
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
-- vim.g.go_gopls_enabled = 0

-- COPILOT
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<leader>p", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.g.copilot_assume_mapped = true
