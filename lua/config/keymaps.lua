-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local map = LazyVim.safe_keymap_set

-- SHIFT + DELETE to delete current word:
map('n', '<S-BS>', 'vb"_d', { noremap = true, silent = true })
map('i', '<S-BS>', '<Esc>daw', { noremap = true, silent = true })

map('v', '<C-n>', 'y/<C-r>"<CR>Ncgn', { noremap = true, silent = true })

