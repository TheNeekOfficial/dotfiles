return {

	-- NOTE: Monokai-Pro
	{
		-- You can easily change to a different colorscheme.
		-- Change the name of the colorscheme plugin below, and then
		-- change the command in the config to whatever the name of that colorscheme is.

		-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
		"loctvl842/monokai-pro.nvim",
		lazy = false,
		priority = 1000, -- Make sure to load this before all the other start plugins.
		init = function()
			-- Load the colorscheme here.
			-- Like many other themes, this one has different styles, and you could load
			-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
			vim.cmd.colorscheme("monokai-pro")

			-- You can configure highlights by doing something like:
			vim.cmd.hi("Comment gui=none")
		end,
	},

	-- NOTE: Everforest
	{
		"sainnhe/everforest",
		lazy = false,
		priority = 1000,
		-- config = function()
		-- 	-- Optionally configure and load the colorscheme
		-- 	-- directly inside the plugin declaration.
		-- 	vim.cmd.colorscheme("everforest")
		-- end,
	},

	-- NOTE: OneDark
	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 1000,
		-- config = function()
		-- 	require("onedark").setup({
		-- 		style = "darker",
		-- 	})
		-- 	require("onedark").load()
		-- end,
	},

	-- NOTE: Kanagawa
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		-- config = function()
		-- 	vim.cmd("colorscheme kanagawa")
		-- end,
	},

	-- NOTE: Tokyonight
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		-- config = function()
		-- 	vim.cmd("colorscheme tokyonight-moon")
		-- end,
	},

	-- NOTE: Catppuccin Mocha
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		-- require("catppuccin").setup({
		-- flavour = "mocha",
		-- }),
	},

	-- NOTE: Ashen
	{
		"ficcdaf/ashen.nvim",
		lazy = false,
		priority = 1000,
		-- configuration is optional!
		opts = {
			-- your settings here
		},
		-- config = function()
		-- 	vim.cmd("colorscheme ashen")
		-- end,
	},

	-- NOTE: Nightfox & CarbonFox
	{
		"EdenEast/nightfox.nvim",
		-- config = function()
		-- 	vim.cmd("colorscheme nightfox")
		-- end,
	},
}
