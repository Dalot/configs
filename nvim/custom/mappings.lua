local M = {}

M.nvimtree = {
  n = {
    ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
  }
}

M.disabled = {
  n = {
      ["_>"] = ""
    }
}

M.custom = {

  n = {
    ["<leader>w"] = {":w<CR>", "save file"},
    ["<C-w>>"] = {":30winc ><CR>", "increase size of vertical split"},
    ["<leader>r0"] = {"cw<C-r>0<Esc>", "replace with the register 0"},
    ["<leader>rp"] = {"\"_dwi<C-r>+<Esc>", "replace with the register +"}
  },

  v = {
      ["//"] = { "y/\\V<C-R>=escape(@\",'/\')<CR><CR>", "  find selected text" },
  },

}


M.lsp = {
  n = {
        -- save
    ["<C-s>"] = { "<cmd> w <CR> <cmd>lua vim.lsp.buf.formatting()<CR>", "save file" },

      ["gd"] = {
         function()
            vim.lsp.buf.definition()
         end,
         "   lsp definition",
      },
      ["gi"] = {
         function()
            vim.lsp.buf.implementation()
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
-- local builtin = require('telescope.builtin')
M.telescope = {
   n = {
      -- find
      -- ["<leader>ff"] = {
      --    function()
      --       builtin.find_files({
      --         find_command = {
      --           'rg',
      --           '--files',
      --           '--hidden',
      --           '-g',
      --           '!.git',
      --           '-g',
      --           '!vendor',
      --         }
      --       })
      --    end,
      --    "  find files",
      -- },
      ["<leader>ff"] = {":Telescope find_files find_command={'rg','--ignore','--hidden','--files','-g','!vendor','-g','!.git'}<CR>", "  find files" },
      ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "  find all" },
      ["<leader>fw"] = { "<cmd> Telescope live_grep glob_pattern=!vendor/* <CR>", "   live grep exclude vendor" },
      ["<leader>fq"] = { "<cmd> Telescope live_grep <CR>", "   live grep include vendor" },
      ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "  find buffers" },
      ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "  help page" },
      ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "   find oldfiles" },
      ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "   show keys" },
      ["<leader>fr"] = { "<cmd> Telescope resume <CR>", "   resume picker" },
      ["<C-p>"] = { "<cmd> Telescope oldfiles <CR>", "   old files" },
      ["<leader>fs"] = { "<cmd> Telescope lsp_dynamic_workspace_symbols <CR>", "  find workspace symbols" },
      ["<leader>fm"] = { "<cmd> Telescope lsp_dynamic_workspace_symbols symbols={'method'} <CR>", "  find workspace symbols" },

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
