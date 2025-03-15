vim.g.mapleader = " "

-- Keymap para guardar y formatear el archivo
vim.keymap.set({ "n", "i" }, "<C-s>", function()
	-- Formatear con LSP o ejecutar leader gf
	local buf = vim.api.nvim_get_current_buf()
	if vim.lsp.buf.format then
		vim.lsp.buf.format({ bufnr = buf })
	else
		vim.cmd("normal! <leader>gf")
	end

	-- Guardar el archivo
	vim.cmd("w")
end)

-- Dividir la pantalla
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Terminal
-- Macro para abrir la terminal en una ventana horizontal
vim.api.nvim_set_keymap("n", "<leader>th", ":split | terminal<CR>", { noremap = true, silent = true })

-- Macro para abrir la terminal en una ventana vertical
vim.api.nvim_set_keymap("n", "<leader>tv", ":vsplit | terminal<CR>", { noremap = true, silent = true })

-- Vertical movement
vim.keymap.set("n", "<C-f>", "<C-f>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })

-- Horizontal movement
-- vim.keymap.set("n", "<C-b>", "<C-b>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
