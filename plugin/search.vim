function! DoSearchInFile(word,file) abort
  let cwd = getcwd()
  let path = fnamemodify(a:file,':h')
  exe 'cd ' . path 
  let glob = '/' . fnamemodify(a:file,':t')
  exe 'CocSearch ' . a:word . ' -g ' . glob
  " when use CocSearch, there is no way to set rg's working directory
  " no way to specify path to rg

  " ensure coc is already got the cwd I set then reset to old cwd
  call timer_start(100, { tid -> execute('cd ' . cwd) })
endfunction

function! DoSearchInFolder(pattern, file) abort
  let cwd = getcwd()
  let path = fnamemodify(a:file,':h')
  exe 'cd ' . path 
  exe 'CocSearch ' . a:pattern
  call timer_start(100, { tid -> execute('cd ' . cwd) })
endfunction


function! DoSearchInFileAndCloseDialog(word,file,winid) abort 
  call DoSearchInFile(a:word,a:file)
  call coc#float#close_i(a:winid)
  return ''
endfunction

function! DoSearchInFolderAndCloseDialog(pattern, file, winid) abort 
  call DoSearchInFolder(a:pattern,a:file)
  call coc#float#close_i(a:winid)
  return ''
endfunction


function! Search() abort
  if !has('nvim') 
    return
  endif

  let file = expand("%:p")
  let [bufnr,winid] = coc#float#create_prompt_win("Search",expand("<cword>"),{})
  let s:prompt_win_bufnr = bufnr
  execute 'sign unplace 6 buffer='.s:prompt_win_bufnr
  call nvim_set_current_win(winid)
  exe 'inoremap <silent><expr><nowait><buffer> <cr> "\<C-r>=DoSearchInFileAndCloseDialog(getline(''.''),''' . file . ''' ,'.winid.')\<cr>\<esc>"'

endfunction

function! SearchInFolder() abort
  if !has('nvim') 
    return
  endif

  let file = expand("%:p")
  let [bufnr,winid] = coc#float#create_prompt_win("Search",expand("<cword>"),{})
  let s:prompt_win_bufnr = bufnr
  execute 'sign unplace 6 buffer='.s:prompt_win_bufnr
  call nvim_set_current_win(winid)
  exe 'inoremap <silent><expr><nowait><buffer> <cr> "\<C-r>=DoSearchInFolderAndCloseDialog(getline(''.''),''' . file . ''' ,'.winid.')\<cr>\<esc>"'

endfunction
