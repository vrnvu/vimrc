Plug 'tpope/vim-fugitive'

nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gc :Git commit -v -q<CR>
nnoremap <leader>gt :Git commit -v -q %:p<CR>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>grebase :Git rebase -i<space>
nnoremap <leader>grebasec :Git rebase --continue<space>
nnoremap <leader>grebasea :Git rebase --abort<space>
nnoremap <leader>gpush :Git push<CR>
nnoremap <leader>gpushu :Git push -u<CR>
nnoremap <leader>gpushf :Git push --force<CR>
nnoremap <leader>gfetch :Git fetch<CR>
nnoremap <leader>gpull :Git pull<CR>
nnoremap <leader>gdiff :Git diff<CR>
nnoremap <leader>gdt :Git difftool<CR>
nnoremap <leader>gds :Gdiffsplit<CR>
nnoremap <leader>glog :Git log<CR>
nnoremap <leader>gblame :Git blame<CR>
