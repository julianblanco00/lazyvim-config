return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, opts)
    local null_ls = require("null-ls")
    opts.sources = {
      null_ls.builtins.formatting.prettier.with({
        extra_args = { "--single-quote", "false", "--tab-width", "2", "--use-tabs", "--print-width", "80" }
      }),
    }
  end,
}
