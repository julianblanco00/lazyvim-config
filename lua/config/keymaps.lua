-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local map = LazyVim.safe_keymap_set

-- SHIFT + DELETE to delete current word:
map('n', '<S-BS>', 'daw', { noremap = true, silent = true })
map('i', '<S-BS>', '<Esc>daw', { noremap = true, silent = true })

-- CMD + delete to delete current line:
map('n', '<D-Del>', 'v0d', { noremap = true, silent = true })
map('i', '<D-Del>', '<Esc>v0d', { noremap = true, silent = true })

