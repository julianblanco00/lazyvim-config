return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {},
        keys = {
            { "<C-}>", function() Snacks.terminal() end, desc = "Toggle Terminal", mode = {"n","t"} },
        }
    },
}
