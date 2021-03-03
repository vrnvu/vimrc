call plug#begin(stdpath('data'))

Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

Plug 'sheerun/vim-polyglot'

Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim',

Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-fugitive'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

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

" yank all file to +
nmap <leader>ya gg"+yG
xnoremap <leader>yy "+y

" paste from +
nmap <leader>p "+p
nmap <leader>P "+P

" Better indenting
vnoremap < <gv
vnoremap > >gv

" clear last search
nmap // :noh<cr>

" maps
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" nmap file
nmap <leader>fs :w<cr>

" nmap fzf 
nmap <leader>sf :Files<cr>
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

" tabs managmen
nmap <leader>tc :tabc<CR>
nmap <leader>tl :tabs<CR>
" tabnext and tabprevious, also in normal mode gt and GT
nmap <leader>tn :tabn<CR>
nmap <leader>tp :tabp<CR>

" registries
nmap <leader>rl :reg<CR>

" nmap fugitive
nmap <leader>gs :Git<cr>

" theme config
colorscheme gruvbox
let g:gruvbox_contrast_dark = "medium"
highlight Normal ctermbg=234
set laststatus=2
set noshowmode

" runners
nmap <leader>rp :!python3 %<CR>
