-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
  callback = function()
    vim.cmd("set scroll=5")
  end,
})

vim.api.nvim_create_autocmd({"BufWritePost"}, {
  pattern = "*",
  callback = function()
    vim.opt.scroll = 5
  end,
})
