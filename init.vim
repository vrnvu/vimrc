call plug#begin('~/.vim/plugged')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'

Plug 'dracula/vim'

Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

Plug 'tweekmonster/gofmt.vim'

call plug#end()

let mapleader = " "

set exrc
set guicursor=
set relativenumber
set tabstop=4
set softtabstop=4
set nu
set nohlsearch
set hidden
set noerrorbells
set shiftwidth=4
set smartindent
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes

set cmdheight=2

set updatetime=50

set shortmess+=c

set colorcolumn=100

syntax enable
colorscheme dracula
highlight Normal guibg=none

lua require'lspconfig'.gopls.setup{}

"Get out of insert mode
imap jk <Esc>
imap kj <Esc>

" Jump to start and end of line using the home row keys
map H ^
map L $

" move lines around
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" nerdtree
nnoremap <leader>nt :NERDTree<CR>

" autocomplition sanes
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"

" yank all file to +
nmap <leader>ya gg"+yG
xnoremap <leader>yy "+y

" paste from +
nmap <leader>p "+p
nmap <leader>P "+P

" delete into register "
vnoremap <leader>d "_dd
nnoremap <leader>d "_dd

" Better indenting
" todo check differences
vnoremap < <gv
vnoremap > >gv

" clear last search
nmap // :noh<cr>

" window moving maps
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" nmap file
nmap <leader>fs :w<cr>
nmap <leader>fx :q<cr>

"nmap windows
nmap <leader>wn <C-w>n
nmap <leader>wt <C-w>v<C-w><Right>:term<CR>
nmap <leader>wv <C-w>v
nmap <leader>wc <C-w>c

" buffer cycling
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>
nmap <leader>bd :bdelete<CR>
nmap <leader>bl :ls<CR>

" tabs managment
nmap <leader>tc :tabc<CR>
nmap <leader>tl :tabs<CR>
" tabnext and tabprevious, also in normal mode gt and GT
nmap <leader>tn :tabn<CR>
nmap <leader>tp :tabp<CR>

" registries
nmap <leader>rl :reg<CR>

" nmap fugitive
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gc :Git commit -v -q<CR>
nnoremap <leader>gt :Git commit -v -q %:p<CR>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Git push<CR>
nnoremap <leader>gpl :Git pull<CR>

" trim white spaces augroup
fun! TrimWhiteSpaces()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun

augroup vrnvu
	autocmd!
	autocmd BufWritePre * :call TrimWhiteSpaces()
augroup END
