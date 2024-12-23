return {
	{
		"tanvirtin/vgit.nvim", -- Esto es para GitLens en Neovim
		requires = {
			"nvim-lua/plenary.nvim"
		},
		config = function()
			require('vgit').setup()
		end
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = {
			window = {
				position = "right",
			}
		},
		keys = {},
	},
	{
		"gitsigns.nvim",
		enabled = false
	},
	{ "echasnovski/mini.indentscope", enabled = false },
	{ "lukas-reineke/indent-blankline.nvim", enabled = false },
	{ "karb94/neoscroll.nvim", enabled = false },
	{ 'echasnovski/mini.ai', enabled = false },
	{ 'echasnovski/mini.hipatterns', enabled = false },
	{ 'echasnovski/mini.pairs', enabled = false },
	{ 'echasnovski/mini.animate', enabled = false },
	{ 'folke/flash.nvim', enabled = false },
	{ 'folke/noice.nvim', enabled = false },
	{
	   "folke/snacks.nvim",
		opts = {
			dashboard = { enabled = false },
			scratch = { enabled = false },
			terminal = { enabled = false },
			scroll = { enabled = false },
			indent = { enabled = false },
		},
	},
}
