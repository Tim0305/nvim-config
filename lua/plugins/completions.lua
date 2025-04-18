return {
	-- {
	--   -- Cmp-nvim-Lsp. Autocompletion with the lsp
	--   "hrsh7th/cmp-nvim-lsp",
	-- },
	-- {
	--   -- Lua Snip plugin
	--   "L3MON4D3/LuaSnip",
	--   dependencies = {
	--     "saadparwaiz1/cmp_luasnip",  -- Completion engine
	--     "rafamadriz/friendly-snippets", -- Snippets from vscode
	--   },
	-- },
	-- {
	--   "hrsh7th/nvim-cmp",
	--   config = function()
	--     local cmp = require("cmp")
	--     -- Add the vscode snippets to luasnip
	--     require("luasnip.loaders.from_vscode").lazy_load()
	--     -- Usar luasnip
	--     cmp.setup({
	--       snippet = {
	--         expand = function(args)
	--           require("luasnip").lsp_expand(args.body)
	--         end,
	--       },
	--       -- Como se ve la ventana de autocompletado
	--       window = {
	--         completion = cmp.config.window.bordered(),
	--         documentation = cmp.config.window.bordered(),
	--       },
	--       -- Keymappings
	--       mapping = cmp.mapping.preset.insert({
	--         ["<C-b>"] = cmp.mapping.scroll_docs(-4),
	--         ["<C-f>"] = cmp.mapping.scroll_docs(4),
	--         ["<C-Space>"] = cmp.mapping.complete(),
	--         ["<C-e>"] = cmp.mapping.abort(),
	--         ["<CR>"] = cmp.mapping.confirm({ select = true }),
	--       }),
	--       sources = cmp.config.sources({
	--         { name = "nvim_lsp" },
	--         { name = "luasnip" }, -- For luasnip users.
	--       }, {
	--         { name = "buffer" },
	--       }, {
	--         { name = "render-markdown" },
	--       }),
	--     })
	--   end,
	-- },
	--

	-----------------------------------------------------
	{
		"saghen/blink.cmp",
		-- optional: provides snippets for the snippet source
		dependencies = "rafamadriz/friendly-snippets",

		-- use a release tag to download pre-built binaries
		version = "*",
		-- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
		-- build = 'cargo build --release',
		-- If you use nix, you can build from source using latest nightly rust with:
		-- build = 'nix run .#build-plugin',

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept, C-n/C-p for up/down)
			-- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys for up/down)
			-- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
			--
			-- All presets have the following mappings:
			-- C-space: Open menu or open docs if already open
			-- C-e: Hide menu
			-- C-k: Toggle signature help
			--
			-- See the full "keymap" documentation for information on defining your own keymap.
			keymap = { preset = "enter" },

			appearance = {
				-- Sets the fallback highlight groups to nvim-cmp's highlight groups
				-- Useful for when your theme doesn't support blink.cmp
				-- Will be removed in a future release
				use_nvim_cmp_as_default = true,
				-- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
				-- Adjusts spacing to ensure icons are aligned
				nerd_font_variant = "mono",
			},

			-- Default list of enabled providers defined so that you can extend it
			-- elsewhere in your config, without redefining it, due to `opts_extend`
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},

			-- Blink.cmp uses a Rust fuzzy matcher by default for typo resistance and significantly better performance
			-- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
			-- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
			--
			-- See the fuzzy documentation for more information
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},
}
