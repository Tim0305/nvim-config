-- numbers
vim.cmd("set number")
vim.cmd("set relativenumber")

--  Formatos de espacios y tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")


-- Usar la misma memoria del s.o

-- Windows
-- vim.cmd("set clipboard=unnamed")

-- Linux
vim.cmd("set clipboard=unnamedplus")

-- Terminal por defecto
if vim.fn.has("win32") == 1 then
	if vim.fn.getenv("WT_SESSION") or vim.fn.getenv("WSLENV") then
		-- Si estás en WSL
		vim.opt.shell = "wsl"
	else
		-- En Windows normal
		vim.opt.shell = "pwsh.exe"
	end
end
