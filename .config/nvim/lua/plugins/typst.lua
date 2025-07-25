return {
	{
		"chomosuke/typst-preview.nvim",
		-- lazy = false, -- or ft = 'typst'
		ft = "typst",
		version = "1.*",
		opts = {

			dependencies_bin = {
				["tinymist"] = nil,
				["websocat"] = nil,
			},
		}, -- lazy.nvim will implicitly calls `setup {}`
		-- config = function()
		-- 	require("typst-preview").setup()
		-- end,
	},
}
