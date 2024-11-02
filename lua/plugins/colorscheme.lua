function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)
    vim.cmd("highlight Normal guibg=#000")
end


return {
  	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme =  "rose-pine",
		},
	},

    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                style = "storm",
                transparent = true,
                terminal_colors = true,
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                    sidebars = "dark",
                    floats = "dark",
                },
            })
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
              disable_background = true,
              styles = {
                keywords = { italic = false },
              }
            })

            vim.cmd("colorscheme rose-pine")
            ColorMyPencils()
        end,
    },
}
