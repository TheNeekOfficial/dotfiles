-- Creates a autocmd group for markdowns
vim.api.nvim_create_augroup("Markdown", { clear = true })

-- Enables better markdown look on entering markdowns
vim.api.nvim_create_autocmd({ "BufWinEnter", "BufEnter" }, {
	group = "Markdown",
	pattern = "*.md",
	callback = function()
		vim.opt.conceallevel = 1
		require("render-markdown").enable()
	end,
})

-- Disables above on leaving markdowns
vim.api.nvim_create_autocmd({ "BufLeave", "WinLeave", "WinClosed", "BufWinLeave" }, {
	group = "Markdown",
	pattern = "*.md",
	callback = function()
		require("render-markdown").disable()
		vim.opt.conceallevel = 0
	end,
})

-- vim.api.nvim_create_autocmd({ "BufWinEnter", "BufEnter"}, {
--   group = "Tasks",
--   pattern = "*",
--   callback = function()
--    -- NOTE: Work out how to run specific keymaps here
--   end,
-- })
