local lspServers = { "lua_ls", "eslint", "css_variables", "cssls", "cssmodules_ls", "html", "ts_ls" }

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = lspServers, -- Servidores que se deben instalar,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			-- Iterar sobre la lista de servidores LSP y configurar cada uno
			for _, lspServer in ipairs(lspServers) do
				lspconfig[lspServer].setup({
					capabilities = capabilities,
				})
			end

			-- Keybindings
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
