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
"typescript highlight
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-surround'
Plug 'neoclide/jsonc.vim'
Plug 'junegunn/vim-easy-align'
Plug 'simnalamburt/vim-mundo'
Plug 'tyru/caw.vim' "comment
call plug#end()

if filereadable(expand(root_path . '/plugged/coc.nvim/package.json'))
  execute 'source ' . root_path . '/plugged-config/coc.vim'
endif

if filereadable(expand(root_path . 'plugged/vim-closetag/README.md')) 
  execute 'source ' . root_path . 'plugged-config/autoclose.vim'
endif


if filereadable(expand(root_path . 'plugged/vim-sneak/README.md')) 
  execute 'source ' . root_path . 'plugged-config/sneak.vim'
endif

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
colorscheme one

  
