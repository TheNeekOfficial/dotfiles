return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	-- event = {
	--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
	--   -- refer to `:h file-pattern` for more examples
	--   "BufReadPre path/to/my-vault/*.md",
	--   "BufNewFile path/to/my-vault/*.md",
	-- },
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
		"nvim-telescope/telescope.nvim",
		"echasnovski/mini.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		workspaces = {
			{
				name = "general",
				path = "~/note-files/General",
			},
			{
				name = "Notes",
				path = "~/note-files/Notes",
			},
		},

		mappings = {
			["<leader>oc"] = {
				action = function()
					return require("obsidian").get_client():command("ObsidianTOC")
				end,
			},
			-- ["gf"] = {
			-- 	action = function() end,
			-- },
		},
		-- Optional, customize how note IDs are generated given an optional title.
		---@param title string|?
		---@return string
		note_id_func = function(title)
			-- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
			-- In this case a note with the title 'My new note' will be given an ID that looks
			-- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
			local suffix = ""
			if title ~= nil then
				-- If title is given, transform it into valid file name.
				suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
			else
				-- If title is nil, just add 4 random uppercase letters to the suffix.
				for _ = 1, 4 do
					suffix = suffix .. string.char(math.random(65, 90))
				end
			end
			return tostring(os.time()) .. "-" .. suffix
		end,
	},

	keys = {
		{
			desc = "[O]bsidian [O]pen",
			"<leader>oo",
			"<cmd>ObsidianOpen<CR>",
		},
		{
			desc = "[O]bsidian [N]ew Note",
			"<leader>on",
			"<cmd>ObsidianNew<CR>",
		},
		{
			desc = "[O]bsidian Search [T]ags",
			"<leader>ot",
			"<cmd>ObsidianTags<CR>",
		},
		{
			desc = "[O]bsidian [S]earch",
			"<leader>os",
			"<cmd>ObsidianSearch<CR>",
		},
		{
			desc = "Show [O]bsidian [B]acklinks",
			"<leader>ob",
			"<cmd>ObsidianBacklinks<CR>",
		},
		{
			desc = "[O]bsidian [L]ist [L]inks",
			"<leader>oll",
			"<cmd>ObsidianLinks<CR>",
		},
		{
			mode = "x",
			desc = "New [O]bsidian [L]ink from highlighted text",
			"ol",
			"<cmd>ObsidianLink<CR>",
		},
		{
			desc = "[O]bsidian [N]ew Note that'll be [L]inked",
			"<leader>onl",
			"<cmd>ObsidianLink<CR>",
		},
		{
			desc = "[G]o [F]ollow Link",
			"gf",
			"<cmd>ObsidianFollowLink<CR>",
		},
	},
}
