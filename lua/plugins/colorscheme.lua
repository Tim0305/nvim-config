-- Colorscheme
return {
  -- {
  -- 	"AlexvZyl/nordic.nvim",
  -- 	lazy = false,
  -- 	priority = 1000,
  -- 	config = function()
  -- 		-- Load the colorscheme
  -- 		require("nordic").load()
  -- 		vim.cmd.colorscheme("nordic")
  -- 	end,
  -- },
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   opts = {
  --     no_italic = true,
  --     term_colors = true,
  --     transparent_background = false,
  --     styles = {
  --       comments = {},
  --       conditionals = {},
  --       loops = {},
  --       functions = {},
  --       keywords = {},
  --       strings = {},
  --       variables = {},
  --       numbers = {},
  --       booleans = {},
  --       properties = {},
  --       types = {},
  --     },
  --     color_overrides = {
  --       mocha = {
  --         base = "#000000",
  --         mantle = "#000000",
  --         crust = "#000000",
  --       },
  --     },
  --     integrations = {
  --       telescope = {
  --         enabled = true,
  --         style = "nvchad",
  --       },
  --       dropbar = {
  --         enabled = true,
  --         color_mode = true,
  --       },
  --     },
  --   },
  --   config = function()
  --     require("catppuccin").load()
  --     vim.cmd.colorscheme("catppuccin")
  --   end,
  -- },
  -- {
  -- 	"rebelot/kanagawa.nvim",
  -- 	config = function()
  -- 		vim.cmd("colorscheme kanagawa-dragon")
  -- 		-- themes: wave, dragon, lotus
  -- 	end,
  -- },
  -- {
  -- 	"folke/tokyonight.nvim",
  -- 	lazy = false,
  -- 	priority = 1000,
  -- 	opts = {},
  -- 	config = function()
  -- 		-- " There are also colorschemes for the different styles.
  -- 		-- colorscheme tokyonight-night
  -- 		-- colorscheme tokyonight-storm
  -- 		-- colorscheme tokyonight-day
  -- 		-- colorscheme tokyonight-moon
  -- 		vim.cmd("colorscheme tokyonight-night")
  -- 	end,
  -- },
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        -- Theme style
        style = "darker",
      })
      require("onedark").load()
    end,
  },
}
