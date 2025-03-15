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
	-- {
	--   "navarasu/onedark.nvim",
	--   config = function()
	--     require("onedark").setup({
	--       -- Theme style
	--       style = "darker",
	--     })
	--     require("onedark").load()
	--   end,
	-- },
	--  {
	-- 	"morhetz/gruvbox",
	-- 	config = function()
	-- 		vim.g.gruvbox_transparent_bg = "1"
	-- 		vim.g.gruvbox_contrast_dark = "hard"
	-- 		vim.cmd.colorscheme("gruvbox")
	-- 	end,
	-- },
	-- {
	--   "eddyekofo94/gruvbox-flat.nvim",
	--   priority = 1000,
	--   enabled = true,
	--   config = function()
	--     -- vim.g.gruvbox_flat_style = "dark"
	--     vim.cmd([[colorscheme gruvbox-flat]])
	--   end,
	-- },
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.gruvbox_material_enable_italic = true
			vim.g.gruvbox_material_background = "hard"
			vim.g.gruvbox_material_foreground = "original"
			vim.g.gruvbox_material_transparent_background = 1
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},
}
