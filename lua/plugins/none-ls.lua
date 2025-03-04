-- Linters and formaters
--https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md
--https://github.com/nvimtools/none-ls-extras.nvim

-- Mason Null ls (Another plugin)
-- https://github.com/jay-babu/mason-null-ls.nvim

return {
	"nvimtools/none-ls.nvim",
	-- add the extras dependencies
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- formaters
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.rubocop,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.black,

				-- linters
				-- Use require("none-ls.METHOD.TOOL") instead of null_ls.builtins.METHOD.TOOL to use these extras.
				-- require("none-ls.diagnostics.cpplint"),

				-- null_ls.builtins.diagnostics.cpplint,
				-- null_ls.builtins.diagnostics.erb_lint,
				-- null_ls.builtins.diagnostics.rubocop,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
