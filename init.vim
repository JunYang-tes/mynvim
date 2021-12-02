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
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'EdenEast/nightfox.nvim'
Plug 'tpope/vim-surround'
Plug 'neoclide/jsonc.vim'
Plug 'junegunn/vim-easy-align'
Plug 'simnalamburt/vim-mundo'
"Plug 'tyru/caw.vim' "comment
Plug 'posva/vim-vue'
Plug 'rescript-lang/vim-rescript'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'tpope/vim-commentary'
" Diff
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'phaazon/hop.nvim'

call plug#end()


"set statusline += %<%f%= buf:%n %l,%c
set statusline+=\ Ln\ %l,Col\ %c\ b:%n%=%f
if filereadable(expand(root_path . '/plugged/coc.nvim/package.json'))
  execute 'source ' . root_path . '/plugged-config/coc.vim'
endif

if filereadable(expand(root_path . '/plugged/nvim-treesitter/lockfile.json'))
  execute 'source ' . root_path . '/plugged-config/nvim-treesitter.vim'
endif

if filereadable(expand(root_path . '/plugged/diffview.nvim/README.md'))
  execute 'source ' . root_path . '/plugged-config/diff.vim'
endif

execute 'source ' . root_path . '/plugged-config/hop.vim'


let g:lightline = {
      \ 'colorscheme': 'nightfox',
      \ }
colorscheme nightfox

  
