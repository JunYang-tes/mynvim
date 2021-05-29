
" Buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> <space>bd :bdelete<CR>
nnoremap <silent> <space><tab> :b#<CR>

" Windows
nnoremap <silent> <space>wc <C-w>c
nnoremap <silent> <space>wd <C-w>c
nnoremap <silent> <space>wh <C-w>h
nnoremap <silent> <space>wl <C-w>l
nnoremap <silent> <space>wk <C-w>k
nnoremap <silent> <space>wj <C-w>j
nnoremap <silent> <space>wf :call coc#float#jump()<CR>
nnoremap <silent> <space>wC :call coc#float#close_all()<CR>

" File
nnoremap <silent> <space>fs :w<CR>
nnoremap <silent> <space>fS :wa<CR>
" copy file name
nnoremap <silent> <space>fcn :let @*=expand("%:p")<CR>
" show file nme
nnoremap <silent> <space>fn :echo expand("%:p")<CR>

" Tab
nnoremap <silent> <space>tn :tabnew<CR>
nnoremap <silent> ]t :tabnext<CR>
nnoremap <silent> [t :tabprevious<CR>

" CocList
nnoremap <silent> <leader>co  :<C-u>CocList <cr>
nnoremap <silent> <leader>lf  :<C-u>CocList files<cr>
nnoremap <silent> <leader>ll  :<C-u>CocList lines<cr>
nnoremap <silent> <leader>lw  :<C-u>CocList words<cr>
nnoremap <silent> <leader>lm  :<C-u>CocList mru<cr>
nnoremap <silent> <leader>lg  :<C-u>CocList grep<cr>
nnoremap <silent> <leader>lb  :<C-u>CocList buffers<cr>
nnoremap <silent> <leader>ld  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <leader>le  :<C-u>CocList extensions<cr>
nnoremap <silent> <leader>lc  :<C-u>CocList commands<cr>
nnoremap <silent> <leader>lo  :<C-u>CocList outline<cr>
nnoremap <silent> <leader>ls  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <leader>lr  :<C-u>CocListResume<CR>
nnoremap <silent> <leader>cf :<C-u>CocCommand tsserver.executeAutofix<CR>
nnoremap <silent> <leader>cw  :<C-u>CocList --number-select wins<cr>
nnoremap <silent> <leader>cj  :<C-u>CocNext<CR>
nnoremap <silent> <leader>ck  :<C-u>CocPrev<CR>
" diagnostics
nmap <silent> [e <Plug>(coc-diagnostic-prev-error)
nmap <silent> ]e <Plug>(coc-diagnostic-next-error)

" Terminal
tnoremap <Esc> <C-\><C-n>

" Other
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Search
nnoremap <silent> <leader>sf :<C-u>call Search()<cr>
nnoremap <silent> <leader>sd :<C-u>call SearchInFolder()<cr>

nnoremap <script> <leader>a :<C-u>call CocActionAsync('codeAction','')<cr>


" Align
"
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)