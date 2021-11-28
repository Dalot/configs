set number
set relativenumber
set noswapfile
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab " When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.  'tabstop' or 'softtabstop' is used in other places.
set softtabstop=4
set mouse=a " Enable the use of the mouse in all modes
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set lazyredraw
set ignorecase
set smartcase
set splitbelow
set splitright

call plug#begin()

Plug 'https://github.com/fatih/vim-go'
Plug 'https://github.com/jparise/vim-graphql'
Plug 'https://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/mg979/vim-visual-multi' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/907th/vim-auto-save'
Plug 'https://github.com/projekt0n/github-nvim-theme'
Plug 'https://github.com/tversteeg/registers.nvim', { 'branch': 'main' }
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }

Plug 'https://github.com/nvim-lua/plenary.nvim'

" These come together
Plug 'https://github.com/kyazdani42/nvim-web-devicons'
Plug 'https://github.com/folke/trouble.nvim'
" These come together

set encoding=UTF-8

call plug#end()

" tversteeg/registers
"let g:registers_return_symbol = "\n" "'⏎' by default

" Fugitive Conflict Resolution
nnoremap <leader>gv :Gvdiff<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>
"Delete all Git conflict markers
"Creates the command :GremoveConflictMarkers
function! RemoveConflictMarkers() range
  echom a:firstline.'-'.a:lastline
  execute a:firstline.','.a:lastline . ' g/^<\{7}\|^|\{7}\|^=\{7}\|^>\{7}/d'
endfunction
"-range=% default is whole file
command! -range=% GremoveConflictMarkers <line1>,<line2>call RemoveConflictMarkers()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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

" Personal config
"let g:auto_save = 1  " enable AutoSave on Vim startup
nnoremap <Leader>w :w<CR>
set clipboard=unnamedplus
set background=dark
set termguicolors     " enable true colors support
colorscheme github_dark_default
let mapleader = ","
inoremap <leader>o <End>
inoremap <leader>a <Home>
inoremap <C-c> <Esc>
nnoremap <C-p> :bprevious<CR>
nnoremap <M-p> :bnext<CR>
nnoremap <M-w> :bdelete<CR>
nnoremap <M-ç> :split<CR>:term<CR>i
tnoremap <Esc> <C-\><C-n>
tnoremap <C-x> <C-\><C-n>
tnoremap <M-w> <C-\><C-n><C-w>q
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <C-u> <C-u>zzzv
nnoremap <C-d> <C-d>zzzv
nnoremap J mzJ`z
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap = =<c-g>u
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'
nnoremap <C-l> <C-w>l
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-right> <C-w>l
tnoremap <C-right> <C-\><C-n><C-w>l
nnoremap <C-k> <C-w>k
tnoremap <C-k> <C-\><C-n><C-w>k
nnoremap <C-up> <C-w>k
tnoremap <C-up> <C-\><C-n><C-w>k
nnoremap <C-j> <C-w>j
tnoremap <C-j> <C-\><C-n><C-w>j
nnoremap <C-down> <C-w>j
tnoremap <C-down> <C-\><C-n><C-w>j
nnoremap <C-h> <C-w>h
tnoremap <C-h> <C-\><C-n><C-w>h
nnoremap <C-left> <C-w>h
tnoremap <C-left> <C-\><C-n><C-w>h
nnoremap _ <C-w>_
nnoremap - <C-w>=

" Prettier on save
"autocmd BufWritePre *.js,*.ts,*.tsx,*.vue CocCommand prettier.formatFile
nnoremap <M-f> :FZF<CR>

" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowCollapsible="~"
nnoremap <C-e> :NERDTreeFind<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-b> :NERDTreeFocus<CR>
autocmd VimEnter * NERDTree

" Tagbar
nmap <F8> :TagbarToggle<CR>

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

" Go Golang
augroup filetype-go
	autocmd!
	let g:go_build_tags = 'integration'
	autocmd FileType go nmap <Leader>gd <Plug>(go-doc)
    autocmd FileType go nmap <Leader>s :call CocAction('doHover')<CR>
augroup END


" Rust
let g:rustfmt_autosave = 1
augroup filetype-rust
	autocmd!
	autocmd FileType rust nmap <Leader>gd :CocCommand rust-analyzer.openDocs<CR>
    autocmd FileType rust nmap <Leader>s :call CocAction('doHover')<CR>


augroup END
