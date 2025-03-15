return {
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = function()
      require("git-conflict").setup({
        default_mappings = false, -- enable buffer local mapping created by this plugin
        default_commands = true, -- disable commands created by this plugin
        disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
        list_opener = "copen",   -- command or function to open the conflicts list
        highlights = {           -- They must have background color, otherwise the default color will be used
          incoming = "DiffAdd",
          current = "DiffText",
        },
      })
      vim.keymap.set("n", "co", ":GitConflictChooseOurs<CR>")
      vim.keymap.set("n", "ct", ":GitConflictChooseTheirs<CR>")
      vim.keymap.set("n", "cb", ":GitConflictChooseBoth<CR>")
      vim.keymap.set("n", "c0", ":GitConflictChooseNone<CR>")
      --  Move to the next conflict.
      vim.keymap.set("n", "nx", ":GitConflictNextConflict<CR>normal! zz", { noremap = true, silent = true })

      -- Move to the previous conflict.
      vim.keymap.set("n", "px", ":GitConflictPrevConflict<CR>normal! zz", { noremap = true, silent = true })

      -- Get all conflict to quickfix
      vim.keymap.set("n", "qx", ":GitConflictListQf<CR>", { noremap = true, silent = true })
    end,
  },
}
