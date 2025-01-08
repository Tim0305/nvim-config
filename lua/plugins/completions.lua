return {
  {
    -- Cmp-nvim-Lsp. Autocompletion with the lsp
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    -- Lua Snip plugin
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",  -- Completion engine
      "rafamadriz/friendly-snippets", -- Snippets from vscode
    },
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      -- Add the vscode snippets to luasnip
      require("luasnip.loaders.from_vscode").lazy_load()
      -- Usar luasnip
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        -- Como se ve la ventana de autocompletado
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        -- Keymappings
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- For luasnip users.
        }, {
          { name = "buffer" },
        }, {
          { name = "render-markdown" },
        }),
      })
    end,
  },
}
