-- Neo tree. File explorer
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- icons
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
    -- Evitar que neo tree capture C-b en su buffer y sea de forma global para aplicar mi keymap
      require("neo-tree").setup({
        default_component_configs = {
          mappings = {
            ["<leader>n"] = "none", -- Desactiva <C-b> dentro del árbol para evitar conflictos
          },
        },
        window = {
          mappings = {
            ["<leader>n"] = "none", -- Desactiva <C-b> específicamente en las ventanas de Neo-tree
          },
        },
      })
      -- Toggle con reveal
      vim.keymap.set('n', '<leader>n', ':Neotree filesystem toggle reveal left<CR>')-- Mensaje de descripcion

    end
  }
}
