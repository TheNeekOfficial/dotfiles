return {
	{
		"vyfor/cord.nvim",
		branch = "client-server",
		build = ":Cord update",
		event = { "VimStart" "BufEnter" },
		config = function()
			local blacklist = {
				"/home/dylan/",
				"",
			}

			local is_blacklisted = function(opts)
				return vim.tbl_contains(blacklist, opts.workspace_name)
			end

			require("cord").setup({
				-- use a custom text for the blacklisted activities
				text = {
					viewing = function(opts)
						return is_blacklisted(opts) and "Viewing a file" or ("Viewing " .. opts.filename)
					end,
					editing = function(opts)
						return is_blacklisted(opts) and "Editing a file" or ("Editing " .. opts.filename)
					end,
					workspace = function(opts)
						return is_blacklisted(opts) and "In a secret workspace" or ("Working on " .. opts.filename)
					end,
				},

				-- Change display
				display = {
					theme = "pastel",
				},

				-- Changes tooltip on hover of nvim
				editor = {
					tooltip = "Neovim",
				},
			})
		end,
	},
}
