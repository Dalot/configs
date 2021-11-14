:set number
:set relativenumber
:set noswapfile
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab " When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.  'tabstop' or 'softtabstop' is used in other places.
:set softtabstop=4
:set mouse=a " Enable the use of the mouse in all modes
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set lazyredraw

call plug#begin()

Plug 'https://github.com/fatih/vim-go'
Plug 'https://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/mg979/vim-visual-multi' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/voldikss/vim-floaterm'
Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/907th/vim-auto-save'
Plug 'https://github.com/projekt0n/github-nvim-theme'
Plug 'https://github.com/tversteeg/registers.nvim', { 'branch': 'main' }
Plug 'https://github.com/kosayoda/nvim-lightbulb'
Plug 'https://github.com/tpope/vim-fugitive'

Plug 'https://github.com/folke/todo-comments.nvim'
Plug 'https://github.com/nvim-lua/plenary.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'https://github.com/folke/trouble.nvim'

set encoding=UTF-8

call plug#end()

let mapleader = ","

" todo-comments
lua << EOF
  require("todo-comments").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

" folke/trouble
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle lsp_workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle lsp_document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>
lua << EOF
  require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

" Prettier on save
autocmd BufWritePre *.js,*.ts,*.tsx,*.vue CocCommand prettier.formatFile

nnoremap <C-e> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <M-f> :FZF<CR>

let g:NERDTreeDirArrowCollapsible="~"
autocmd VimEnter * NERDTree

nmap <F8> :TagbarToggle<CR>

set background=dark
set termguicolors     " enable true colors support
colorscheme github_dark_default

" Floaterm
nnoremap <M-ç> :FloatermNew<CR><C-\><C-n>
nnoremap <M-h> :FloatermHide<CR>
nnoremap <M-k> :FloatermKill<CR>
nnoremap <M-left> :FloatermPrev<CR><C-\><C-n>
nnoremap <M-right> :FloatermNext<CR><C-\><C-n>

nnoremap <C-p> :bprevious<CR>
nnoremap <M-p> :bnext<CR>
nnoremap <M-w> :bdelete<CR>

" air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

