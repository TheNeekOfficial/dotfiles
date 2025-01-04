return {
	"zaldih/themery.nvim",
	lazy = false,
	keys = {
		{
			"<leader>cs",
			"<cmd>Themery<cr>",
			desc = "Colorscheme picker",
		},
	},
	config = function()
		require("themery").setup({
			-- add the config here

			themes = {
				-- Your list of installed colorschemes.
				{
					name = "monokai",
					colorscheme = "monokai-pro",
				},
				{
					name = "everforest",
					colorscheme = "everforest",
					before = [[
			      vim.g.everforest_enable_italic = true
			      vim.g.everforest_background = "hard"
			    ]],
				},
				{
					name = "onedark",
					colorscheme = "onedark",
				},
				{
					name = "Kanagawa",
					colorscheme = "kanagawa",
				},
				{
					name = "Tokyo Night Moon",
					colorscheme = "tokyonight-moon",
				},
				{
					name = "Tokyo Night Night",
					colorscheme = "tokyonight-night",
				},
				{
					name = "Cattpuccin Mocha",
					colorscheme = "catppuccin-mocha",
				},
			},
			livePreview = true, -- Apply theme while picking. Default to true.
		})
	end,
}
