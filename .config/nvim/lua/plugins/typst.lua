return {
	{
		"chomosuke/typst-preview.nvim",
		-- lazy = false, -- or ft = 'typst'
		ft = "typst",
		version = "1.*",
		-- opts = {
		--
		-- 	dependencies_bin = {
		-- 		["tinymist"] = nil,
		-- 		["websocat"] = nil,
		-- 	},
		-- open_cmd = "zen %s -P typst-preview --class typst-preview",
		-- port = 8000,
		-- }, -- lazy.nvim will implicitly calls `setup {}`
		config = function()
			require("typst-preview").setup({

				dependencies_bin = {
					["tinymist"] = nil,
					["websocat"] = nil,
				},
				open_cmd = "zen %s",
				port = 8000,

				-- Setting this true will enable logging debug information to
				-- `vim.fn.stdpath 'data' .. '/typst-preview/log.txt'`
				debug = false,

				-- Setting this to 'always' will invert black and white in the preview
				-- Setting this to 'auto' will invert depending if the browser has enable
				-- dark mode
				-- Setting this to '{"rest": "<option>","image": "<option>"}' will apply
				-- your choice of color inversion to images and everything else
				-- separately.
				invert_colors = "never",

				-- Whether the preview will follow the cursor in the source file
				follow_cursor = true,

				-- This function will be called to determine the root of the typst project
				get_root = function(path_of_main_file)
					local root = os.getenv("TYPST_ROOT")
					if root then
						return root
					end
					return vim.fn.fnamemodify(path_of_main_file, ":p:h")
				end,

				-- This function will be called to determine the main file of the typst
				-- project.
				get_main_file = function(path_of_buffer)
					return path_of_buffer
				end,
			})
		end,
	},
}
