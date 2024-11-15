return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, opts)
    local null_ls = require("null-ls")
    opts.sources = {
      null_ls.builtins.formatting.prettier.with({
        extra_args = { "--single-quote", "--tab-width", "4" }
      }),
      null_ls.builtins.formatting.stylua.with({
        extra_args = { "--indent-type", "Spaces" }
      }),
    }
  end,
}
