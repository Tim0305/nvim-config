-- LSP servers and clients communicate which features they support through "capabilities".
--  By default, Neovim supports a subset of the LSP specification.
--  With blink.cmp, Neovim has _more_ capabilities which are communicated to the LSP servers.
local lspServers =
	{ "lua_ls", "eslint", "css_variables", "cssls", "cssmodules_ls", "html", "ts_ls", "clangd", "pyright" }

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
		dependencies = { "saghen/blink.cmp" }, -- Enable this when using blink cmp
		config = function()
			-- local capabilities = require("cmp_nvim_lsp").default_capabilities() -- Use this when using cmp_nvim
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			local lspconfig = require("lspconfig")

			-- Debemos agregar .cmd al ejecutable del LSP para que funcione en windows, y no nos arroje el error que no se encuentre instalado o no esta en el PATH

			-- Detectar si estamos en Windows
			local is_windows = vim.loop.os_uname().version:match("Windows")

			if is_windows then
				-- Sobrescribir `on_new_config` para agregar `.cmd` si falta
				-- on_new_config. Esta función es llamada cada vez que se configura un servidor LSP.
				local default_config = require("lspconfig.util").default_config
				local original_on_new_config = default_config.on_new_config

				default_config.on_new_config = function(new_config, ...)
					-- Asegurarse de que el comando exista y que sea un string
					if new_config.cmd and type(new_config.cmd[1]) == "string" then
						-- Comprobar si el comando no termina en ".cmd"
						if not new_config.cmd[1]:lower():match("%.cmd$") then
							-- Añadir ".cmd" al nombre del comando
							new_config.cmd[1] = new_config.cmd[1] .. ".cmd"
						end
					end
					-- Llamar al `on_new_config` original para que se ejecute el comportamiento estándar de configuración.
					if original_on_new_config then
						original_on_new_config(new_config, ...)
					end
				end
			end

			-- Iterar sobre la lista de servidores LSP y configurar cada uno
			for _, lspServer in ipairs(lspServers) do
				lspconfig[lspServer].setup({
					-- on_attach = on_attach,
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
