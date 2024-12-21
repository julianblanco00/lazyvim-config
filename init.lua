require("config.lazy")

vim.opt["tabstop"] = 4 -- how many columns will be inserted when using < and >
vim.opt["shiftwidth"] = 4 -- only affects rendering, not effect in text
vim.opt["expandtab"] = false -- all the new tab characters entered won't be changed to spaces
vim.opt.list = false -- don't show > on every tab
