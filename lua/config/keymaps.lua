local map = LazyVim.safe_keymap_set

map('v', '<C-n>', 'y/<C-r>"<CR>Ncgn', { noremap = true, silent = true })

map({'n', 'v'}, '<leader>dd', '"_dd<Esc>', { noremap = true, silent = true })
map({'n', 'v'}, '<leader>dw', '"_dw<Esc>', { noremap = true, silent = true })
map({'n', 'v'}, '<leader>p', '"_dP<Esc>', { noremap = true, silent = true })

map('n', '{', '<C-d>', { noremap = true, silent = true })
map('n', '}', '<C-u>', { noremap = true, silent = true })

map('n', '<C-e>', '5<C-e>', { noremap = true, silent = true })
map('n', '<C-y>', '5<C-y>', { noremap = true, silent = true })

map('n', '0', '^', { noremap = true, silent = true })

map('n', 'yp', '<S-v>$%y', { noremap = true, silent = true })
