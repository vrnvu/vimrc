call plug#begin('~/.vim/plugged')

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Nerdtree
Plug 'scrooloose/nerdtree'

" Airline and tabline
Plug 'vim-airline/vim-airline'
Plug 'mkitt/tabline.vim'

"  LSP plugins
" Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/nvim-compe'
" Plug 'ray-x/lsp_signature.nvim' "https://github.com/ray-x/lsp_signature.nvim
" Plug 'glepnir/lspsaga.nvim' "https://github.com/glepnir/lspsaga.nvim
" Plug 'simrat39/symbols-outline.nvim' "https://github.com/simrat39/symbols-outline.nvim
"
" vim go + coc plugins
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' } " https://github.com/fatih/vim-go
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " https://github.com/neoclide/coc.nvim
Plug 'SirVer/ultisnips'                             " https://github.com/sirver/UltiSnips

Plug 'dracula/vim'

Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

"zen mode
Plug 'folke/zen-mode.nvim' " https://github.com/folke/zen-mode.nvim

" git fugitive
Plug 'tpope/vim-fugitive'

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
set completeopt=menuone,noselect

set signcolumn=yes

set cmdheight=2

set updatetime=50

set shortmess+=c

set colorcolumn=100

syntax enable
filetype on
set nocompatible
colorscheme dracula
highlight Normal guibg=none

" TODO if LSP plugins
" lua require'lspconfig'.gopls.setup{}
" lua require "lsp_signature".setup()

"Get out of insert mode
imap jk <Esc>
imap kj <Esc>

" Jump to start and end of line using the home row keys
map H ^
map L $

" move lines around
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

" telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" nerdtree
nnoremap <leader>nt :NERDTree<CR>
nnoremap <leader>nn :NERDTreeToggle<CR>

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
nmap <leader>wv <C-w>v
nmap <leader>wc <C-w>c

" buffer cycling
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>
nmap <leader>bd :bd!<CR>
nmap <leader>bl :ls<CR>

" tabs managment
nmap <leader>tt :tabnew<CR>
nmap <leader>tc :tabc<CR>
nmap <leader>tl :tabs<CR>

" tabnext and tabprevious, also in normal mode gt and GT
nmap <leader>tn :tabn<CR>
nmap <leader>tp :tabp<CR>

" registries
nmap <leader>rl :reg<CR>

" zenmode
nmap <leader>ez :ZenMode<CR>

" nmap fugitive
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gc :Git commit -v -q<CR>
nnoremap <leader>gt :Git commit -v -q %:p<CR>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Git push<CR>
nnoremap <leader>gpl :Git pull<CR>

" LSP
" compe
" let g:compe = {}
" let g:compe.enabled = v:true
" let g:compe.autocomplete = v:true
" let g:compe.debug = v:false
" let g:compe.min_length = 1
" let g:compe.preselect = 'enable'
" let g:compe.throttle_time = 80
" let g:compe.source_timeout = 200
" let g:compe.incomplete_delay = 400
" let g:compe.max_abbr_width = 100
" let g:compe.max_kind_width = 100
" let g:compe.max_menu_width = 100
" let g:compe.documentation = v:true

" let g:compe.source = {}
" let g:compe.source.path = v:true
" let g:compe.source.buffer = v:true
" let g:compe.source.calc = v:true
" let g:compe.source.nvim_lsp = v:true
" " let g:compe.source.nvim_lua = v:true
" " let g:compe.source.vsnip = v:true
" let g:compe.source.ultisnips = v:true


" inoremap <silent><expr> <C-Space> compe#complete()
" inoremap <silent><expr> <CR>      compe#confirm('<CR>')
" inoremap <silent><expr> <C-e>     compe#close('<C-e>')
" inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
" inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" ultisnips patch over tab been mapped to switching buffers
let g:UltiSnipsExpandTrigger="<c-j>"

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

"-- vim-go specific configuration
" run :GoBuild or :GoTestCompile based on the go file
 function! s:build_go_files()
   let l:file = expand('%')
   if l:file =~# '^\f\+_test\.go$'
     call go#test#Test(0, 1)
   elseif l:file =~# '^\f\+\.go$'
     call go#cmd#Build(0)
   endif
 endfunction

 autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
 autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
 autocmd FileType go nmap <leader>t <Plug>(go-test)
 autocmd FileType go nmap <leader>l :GoLint<CR>

 let g:go_list_type = "quickfix"    " error lists are of type quickfix
 let g:go_auto_sameids = 0          " highlight matching identifiers
 let g:go_auto_type_info = 1 " go autotype info

 " errors
 map <C-n> :cnext<CR>
 map <C-m> :cprevious<CR>
 nnoremap <leader>a :cclose<CR>

 " free vars
 xnoremap <leader>e :GoFreevars<CR>

 " implement interface stub
 nmap <leader>i :GoImpl<CR>

 " Alternate
 " :A :AV :AS :AT
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" -- vim-go specific configuration (END)

" -- coc.nvim specific configuration

 set hidden
 set cmdheight=2
 set updatetime=300
 set shortmess+=c

 autocmd FileType go nmap <silent> gr <Plug>(coc-references)
 autocmd FileType go nmap <silent> gi <Plug>(coc-implementation)
 autocmd FileType go nmap <leader>rn <Plug>(coc-rename)

 nnoremap <silent> K :call <SID>show_documentation()<CR>
 function! s:show_documentation()
   if (index(['vim','help'], &filetype) >= 0)
     execute 'h '.expand('<cword>')
   else
     call CocAction('doHover')
   endif
 endfunction
