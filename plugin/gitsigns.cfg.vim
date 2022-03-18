lua <<EOF
require("gitsigns").setup()
EOF
nnoremap <silent> [c :Gitsigns prev_hunk<CR>
nnoremap <silent> ]c :Gitsigns next_hunk<CR>
