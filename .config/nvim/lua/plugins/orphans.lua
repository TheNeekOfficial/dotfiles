return {
	{
		"ZWindL/orphans.nvim",
		-- branch = "fix/6-bug-stuck-on-analyzing-when-opened-inside-oilnvim",
		config = function()
			require("orphans").setup({})
		end,
	},
}
