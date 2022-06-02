local M = {}

M.nvimtree = {
  mode_opts = { noremap = true }, -- this is completely optional
  n = {
    ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
    ["<C-e>"] = { "<cmd> NvimTreeFindFile <CR>", "   find nvimtree" },
  }
}

M.custom = {
  mode_opts = { noremap = true },

  n = {
    ["<leader>w"] = {":w<CR>", "save file"},
    ["<C-w>>"] = {":30winc ><CR>", "increase size of vertical split"},
  },

  v = {
      ["//"] = { "y/\\V<C-R>=escape(@\",'/\')<CR><CR>", "  find selected text" },
  },

}


M.lsp = {
  n = {
      ["gd"] = {
         function()
            vim.lsp.buf.definition()
         end,
         "   lsp definition",
      },
      ["<leader>s"] = {
         function()
            vim.lsp.buf.hover()
         end,
         "   lsp hover",
      },
      ["<leader>a"] = {
         function()
            vim.lsp.buf.code_action()
         end,
         "   lsp code_action",
      },
      ["<leader>e"] = {
         function()
            vim.diagnostic.goto_prev()
         end,
         "   goto prev",
      },

      ["<leader>E"] = {
         function()
            vim.diagnostic.goto_next()
         end,
         "   goto_next",
      },
      ["<C-k>"] = {
         function()
            vim.lsp.buf.signature_help()
         end,
         "   lsp signature_help",
      },

      ["<leader>D"] = {
         function()
            vim.lsp.buf.type_definition()
         end,
         "   lsp definition type",
      },

      ["<leader>ra"] = {
         function()
            vim.lsp.buf.rename()
         end,
         "   lsp rename",
      },
      ["gr"] = {
         function()
            vim.lsp.buf.references()
         end,
         "   lsp references",
      },
  }
}

-- local find_files = function()
--   require("telescope.builtin").find_files({})
-- end

M.telescope = {
   n = {
      -- find
      -- ["<leader>ff"] = {find_files},
      ["<leader>ff"] = {"<cmd>lua require'telescope.builtin'.find_files({ find_command={'rg', '--files', '--hidden', '-g', '!.git' , '-g', '!vendor'}})  <CR>", "  find files" },
      ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "  find all" },
      ["<leader>fw"] = { "<cmd> Telescope live_grep glob_pattern=!vendor/* <CR>", "   live grep exclude vendor" },
      ["<leader>fq"] = { "<cmd> Telescope live_grep <CR>", "   live grep include vendor" },
      ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "  find buffers" },
      ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "  help page" },
      ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "   find oldfiles" },
      ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "   show keys" },
      ["<leader>fr"] = { "<cmd> Telescope resume <CR>", "   resume picker" },

      -- git
      ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "  git commits" },
      ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "  git status" },
      ["<leader>gb"] = { "<cmd> Telescope git_branches <CR>", "  git branches" },

      -- pick a hidden term
      ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "   pick hidden term" },

      -- theme switcher
      ["<leader>th"] = { "<cmd> Telescope themes <CR>", "   nvchad themes" },
   },
}

return M
