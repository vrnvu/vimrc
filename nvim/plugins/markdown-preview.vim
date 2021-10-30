Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

nmap <leader>mdp <Plug>MarkdownPreview
nmap <leader>mds <Plug>MarkdownPreviewStop
nmap <leader>mdt <Plug>MarkdownPreviewToggle
