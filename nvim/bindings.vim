"Get out of insert mode
imap jk <Esc>
imap kj <Esc>

" Sane Y lol
nnoremap Y y$

" keeping mouse centered when n,N,J
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

"Jump to start and end of line using the home row keys
map H ^
map L $

" Allow gf to open non-existing files
map gf :edit <cfile><cr>

" move lines around
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

" yank all file to +
nmap <leader>ya gg"+yG
xnoremap <leader>yy "+y

" paste from +
nmap <leader>p "+p
nmap <leader>P "+P

" delete into register "
vnoremap <leader>d "_dd
nnoremap <leader>d "_dd

" Better indenting with visual selection
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

" second option closes buffer no windows
nmap <leader>bd :bd!<CR>
" nmap <leader>bd :bp<bar>sp<bar>bn<bar>bd<CR>

nmap <leader>bl :ls<CR>

" tabs managment
nmap <leader>tt :tabnew<CR>
nmap <leader>tc :tabc<CR>
nmap <leader>tl :tabs<CR>

" tab movement
nmap <leader>t1 1gt<CR>
nmap <leader>t2 2gt<CR>
nmap <leader>t3 3gt<CR>
nmap <leader>t4 4gt<CR>
nmap <leader>t5 5gt<CR>

" tabnext and tabprevious, also in normal mode gt and GT
nmap <leader>tn :tabn<CR>
nmap <leader>tp :tabp<CR>

" registries
nmap <leader>rl :reg<CR>

" insert closing while writting
imap ;; <esc>A;<esc>
imap ,, <esc>A,<esc>

" autocomplition sanes
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"
