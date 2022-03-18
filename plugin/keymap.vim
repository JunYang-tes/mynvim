
" Buffers
nnoremap <silent> [b :BufMRUPrev<CR>
nnoremap <silent> ]b :BufMRUNext<CR>
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
nnoremap <silent> <leader>lf  :CocList files<cr>
nnoremap <silent> <leader>ll  :CocList lines<cr>
nnoremap <silent> <leader>lw  :<C-u>CocList words<cr>
nnoremap <silent> <leader>lm  :<C-u>CocList mru<cr>
nnoremap <silent> <leader>lg  :CocList grep<cr>
nnoremap <silent> <leader>lb  :CocList buffers<cr>
nnoremap <silent> <leader>ld  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <leader>le  :<C-u>CocList extensions<cr>
nnoremap <silent> <leader>lc  :<C-u>CocList commands<cr>
nnoremap <silent> <leader>lo  :<C-u>CocList outline<cr>
nnoremap <silent> <leader>ls  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <leader>lr  :CocList resume<cr>
nnoremap <silent> <leader>cf :<C-u>CocCommand tsserver.executeAutofix<CR>
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
nnoremap <silent> <leader>sb :<C-u>call Search()<cr>
nnoremap <silent> <leader>sd :<C-u>call SearchInFolder()<cr>

nnoremap <script> <leader>a :<C-u>call CocActionAsync('codeAction','')<cr>


" Align
"
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" hop
nnoremap <silent> <leader>hl :HopLine<CR>
nnoremap <silent> <leader>hw :HopWord<CR>
nnoremap <silent> f :HopChar1CurrentLineAC<CR>
nnoremap <silent> F :HopChar1CurrentLineBC<CR>

nnoremap <silent> <leader>z :ZenMode<CR>

nmap ge :CocCommand explorer <CR>


inoremap <C-n> <Down>
inoremap <C-p> <Up>
nnoremap <C-n> <Down>
nnoremap <C-p> <Up>

