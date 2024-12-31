return {
	{
		"ThePrimeagen/refactoring.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		lazy = false,
		config = function()
			require("refactoring").setup({})

			-- Refactoring keymaps
			vim.keymap.set("x", "<leader>re", function()
				require("refactoring").refactor("Extract Function")
			end, { desc = "[R]efactor [E]xtract Function" })
			vim.keymap.set("x", "<leader>rf", function()
				require("refactoring").refactor("Extract Function To File")
			end, { desc = "[R]efactor [F]unction to File" })
			-- Extract function supports only visual mode
			vim.keymap.set("x", "<leader>rv", function()
				require("refactoring").refactor("Extract Variable")
			end, { desc = "[R]efactor [V]ariable" })
			-- Extract variable supports only visual mode
			vim.keymap.set("n", "<leader>rI", function()
				require("refactoring").refactor("Inline Function")
			end, { desc = "[R]efactor [I]nline Function" })
			-- Inline func supports only normal
			vim.keymap.set({ "n", "x" }, "<leader>ri", function()
				require("refactoring").refactor("Inline Variable")
			end, { desc = "[R]efactor [i]nline Variable" })
			-- Inline var supports both normal and visual mode

			vim.keymap.set("n", "<leader>rb", function()
				require("refactoring").refactor("Extract Block")
			end, { desc = "[R]efactor [B]lock" })
			vim.keymap.set("n", "<leader>rbf", function()
				require("refactoring").refactor("Extract Block To File")
			end, { desc = "[R]efactor [B]lock to [F]ile" })
			-- Extract block supports only normal mode
			--
			-- load refactoring Telescope extension
			require("telescope").load_extension("refactoring")

			vim.keymap.set({ "n", "x" }, "<leader>rr", function()
				require("telescope").extensions.refactoring.refactors()
			end, { desc = "[R]efactoring [R]efactors" })
		end,
	},
}
