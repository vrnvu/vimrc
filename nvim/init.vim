let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

" Dracula
source ~/.config/nvim/plugins/dracula.vim

" Telescope
source ~/.config/nvim/plugins/popup.vim
source ~/.config/nvim/plugins/plenary.vim
source ~/.config/nvim/plugins/telescope.vim

" Treesitter
source ~/.config/nvim/plugins/nvim-treesitter.vim
source ~/.config/nvim/plugins/playground.vim

" Nerdtree
source ~/.config/nvim/plugins/nerdtree.vim

" Airline and tabline
source ~/.config/nvim/plugins/vim-airline.vim
source ~/.config/nvim/plugins/tabline.vim

"  LSP plugins
" Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/nvim-compe'
" Plug 'ray-x/lsp_signature.nvim' "https://github.com/ray-x/lsp_signature.nvim
" Plug 'glepnir/lspsaga.nvim' "https://github.com/glepnir/lspsaga.nvim
" Plug 'simrat39/symbols-outline.nvim' "https://github.com/simrat39/symbols-outline.nvim

" vim go + coc plugins
source ~/.config/nvim/plugins/vim-go.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/utilsnips.vim

" movement and writting helpers
source ~/.config/nvim/plugins/vim-surround.vim
source ~/.config/nvim/plugins/vim-easymotion.vim
source ~/.config/nvim/plugins/vim-exchange.vim
source ~/.config/nvim/plugins/vim-commentary.vim
source ~/.config/nvim/plugins/auto-pairs.vim

"zen mode
source ~/.config/nvim/plugins/zen-mode.vim

" debugger 
source ~/.config/nvim/plugins/vimspector.vim
source ~/.config/nvim/plugins/vim-maximizer.vim

" markdown
source ~/.config/nvim/plugins/markdown-preview.vim

" git fugitive
source ~/.config/nvim/plugins/vim-fugitive.vim

call plug#end()

let mapleader = " "
colorscheme dracula

source ~/.config/nvim/base.vim
source ~/.config/nvim/bindings.vim
