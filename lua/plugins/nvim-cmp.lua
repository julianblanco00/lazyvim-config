-- Veturn {
--   {
--     "nvim-cmp",
--   },

return {
  -- {
  --   'jose-elias-alvarez/null-ls.nvim'
  -- },
  -- {
  --   'MunifTanjim/eslint.nvim'
  -- },
  -- {
  --   'neovim/nvim-lspconfig'
  -- },
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
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'saadparwaiz1/cmp_luasnip',
      'onsails/lspkind-nvim',
      "L3MON4D3/LuaSnip",
      },
    keys =  {
      { "<Tab>", mode = { "i", "s" }, false },
    },
    config = function()
      local cmp = require('cmp')
      cmp.setup({
        sources = {
          { name = 'nvim_lsp' },
          { name = 'nvim_lua' },
          { name = 'luasnip' },
        },
        completion = {
          autocomplete = false
        },
        mapping = cmp.mapping.preset.insert({
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<C-u>'] = cmp.mapping.scroll_docs(4),
          ['<C-e>'] = cmp.mapping.close(),
          ['<C-Space>'] = function(fallback)
            if cmp.visible() then
              cmp.mapping.confirm({ select = true })(fallback)
            else
              cmp.mapping.complete()(fallback)
            end
          end,
          ['<Tab>'] = function(fallback)
            if cmp.visible() then
              local entry = cmp.get_selected_entry()
              if entry then
                cmp.mapping.confirm({ select = true })(fallback)
              else
              fallback()
            end
            else
              fallback()
            end
          end,
        }),
      })
    end,
  }
}
