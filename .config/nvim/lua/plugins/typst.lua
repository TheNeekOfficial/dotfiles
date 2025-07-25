return {
	{
		"chomosuke/typst-preview.nvim",
		-- lazy = false, -- or ft = 'typst'
		ft = "typst",
		version = "1.*",
		-- opts = { }, -- lazy.nvim will implicitly calls `setup {}`
		config = function()
			require("typst-preview").setup({

				dependencies_bin = {
					["tinymist"] = nil,
					["websocat"] = nil,
				},
				open_cmd = "zen %s -P typst-preview --class typst-preview",
				port = 8000,
			})
		end,
	},
}
