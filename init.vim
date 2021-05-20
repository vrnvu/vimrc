call plug#begin(stdpath('data'))

" themes
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" multi lang lang support
" Plug 'sheerun/vim-polyglot'

" easy motion
Plug 'easymotion/vim-easymotion'

" nerd tree
Plug 'preservim/nerdtree'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fzf search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim',

" ysiw/cs"
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'

" git wrapper
Plug 'tpope/vim-fugitive'

" airline and airline theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" exchange words
Plug 'tommcdo/vim-exchange'

" ale for syntax errors highlight
Plug 'w0rp/ale'

" rust lang support
Plug 'rust-lang/rust.vim'

" commentary with gcc
Plug 'tpope/vim-commentary'

call plug#end()

" this config is needed by rustlang
filetype plugin indent on

" config
syntax on
set number
set mouse=a
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L

"Get out of insert mode 
imap jk <Esc>
imap kj <Esc>

" Jump to start and end of line using the home row keys
map H ^
map L $

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
nmap <leader>fq :q<cr>
nmap <leader>fx :wq!<cr>

" nmap fzf 
" nmap <C-p> :GFiles<cr>
nmap <leader>sf :GFiles<cr>
nmap <leader>sr :Rg<cr>
nmap <leader>sb :Buffers<cr>

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

" theme config
colorscheme gruvbox
" todo check this medium config is right
let g:gruvbox_contrast_dark = "medium"
highlight Normal ctermbg=234
set laststatus=2
set noshowmode

" code runners
nmap <leader>rp :!python3 %<CR>

" coc todo move
" nmap coc go definiton or references
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
