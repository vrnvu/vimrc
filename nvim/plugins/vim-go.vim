Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' } " https://github.com/fatih/vim-go

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
