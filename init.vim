let root_path=expand("<sfile>:h")
let g:mapleader = ','
set sw=2
set ts=2
set expandtab
execute "set rtp^=" . root_path
"set rtp^='~/.myvim'
set hid
set nocompatible
set mouse=a
set relativenumber
filetype plugin on

if (has("termguicolors"))
  set termguicolors
endif

call plug#begin(root_path . '/plugged')
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'rakr/vim-one'
"typescript syntax
Plug 'herringtondarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tpope/vim-surround'
Plug 'neoclide/jsonc.vim'
Plug 'junegunn/vim-easy-align'
Plug 'simnalamburt/vim-mundo'
Plug 'tyru/caw.vim' "comment
call plug#end()


"set statusline += %<%f%= buf:%n %l,%c
set statusline+=\ Ln\ %l,Col\ %c\ b:%n%=%f
if filereadable(expand(root_path . '/plugged/coc.nvim/package.json'))
  execute 'source ' . root_path . '/plugged-config/coc.vim'
endif


if filereadable(expand(root_path . '/plugged/yats.vim/package.json'))
  execute 'source ' . root_path . '/plugged-config/yats.vim'
endif

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
colorscheme one

  
