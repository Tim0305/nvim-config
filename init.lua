-- Keymaps
require("keymaps")
require("win32yank")
require("vim-config")
-- Lazy.nvim
require("config.lazy")

-- Lazy Autoupdate
-- vim.api.nvim_create_autocmd("VimEnter", {
--   group = vim.api.nvim_create_augroup("LazyUpdate", { clear = true }),
--   callback = function()
--     require("lazy").update() -- Usar el método adecuado según la configuración de lazy.nvim
--   end,
-- })
