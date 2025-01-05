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
					after = [[
			      vim.cmd.hi("Comment gui=none")
			    ]],
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
					name = "Kanagawa Dragon",
					colorscheme = "kanagawa-dragon",
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
					name = "Catppuccin Mocha",
					colorscheme = "catppuccin-mocha",
				},
				{
					name = "Ashen",
					colorscheme = "ashen",
				},
				{
					name = "Sorbet",
					colorscheme = "sorbet",
				},
			},
			livePreview = true, -- Apply theme while picking. Default to true.
		})
	end,
}
