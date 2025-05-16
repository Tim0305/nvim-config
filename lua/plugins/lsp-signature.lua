return {
	{
		"ray-x/lsp_signature.nvim",
		event = "InsertEnter",
		opts = {
			bind = true,
			handler_opts = {
				border = "rounded",
			},
		},
		config = function(_, opts)
			-- Habilitar lsp signature en el buffer
			require("lsp_signature").setup(opts)
		end,
		-- or use config
		-- config = function(_, opts) require'lsp_signature'.setup({you options}) end
	},
}
