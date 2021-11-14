:set number
:set relativenumber
:set noswapfile
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab " When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.  'tabstop' or 'softtabstop' is used in other places.
:set softtabstop=4
:set mouse=a " Enable the use of the mouse in all modes

call plug#begin()

Plug 'fatih/vim-go'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug '907th/vim-auto-save'
Plug 'projekt0n/github-nvim-theme'

set encoding=UTF-8

call plug#end()

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
