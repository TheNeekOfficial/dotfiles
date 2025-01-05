return {
	{
		"quentingruber/pomodoro.nvim",
		lazy = false, -- needed so the pomodoro can start at launch
		opts = {
			-- start_at_launch = true,
			start_at_launch = false,
			work_duration = 20,
			break_duration = 5,
			delay_duration = 1, -- The additionnal work time you get when you delay a break
			long_break_duration = 15,
			breaks_before_long = 3,
		},

		vim.keymap.set("n", "<leader>ps", ":PomodoroStart<CR>", { desc = "[P]omodoro [S]tart" }),
		vim.keymap.set("n", "<leader>pS", ":PomodoroStop<CR>", { desc = "[P]omodoro [S]top" }),
		vim.keymap.set("n", "<leader>pu", ":PomodoroUI<CR>", { desc = "Open [P]omodoro [U]I" }),
		vim.keymap.set("n", "<leader>pfb", ":PomodoroForceBreak<CR>", { desc = "[P]omodoro [F]orce [B]reak" }),
		vim.keymap.set("n", "<leader>pdb", ":PomodoroDelayBreak<CR>", { desc = "[P]omodoro [D]elay [B]reak" }),
		vim.keymap.set("n", "<leader>psb", ":PomodoroSkipBreak<CR>", { desc = "[P]omodoro [S]kip [B]reak" }),
	},
}
