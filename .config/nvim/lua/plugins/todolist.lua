return {
	{
		"Dan7h3x/LazyDo",
		branch = "main",
		cmd = { "LazyDoToggle", "LazyDoPin", "LazyDoToggleStorage" },
		keys = { -- recommended keymap for easy toggle LazyDo in normal and insert modes (arbitrary)
			{
				"<F2>",
				"<ESC><CMD>LazyDoToggle<CR>",
				mode = { "n", "i" },
			},
		},
		event = "VeryLazy",
		opts = {
			-- your config here
			local fd_os_release = assert(io.open("/etc/os-release"), "r")
			local s_os_release = fd_os_release:read("*a")
			fd_os_release:close()
			s_os_release = s_os_release:lower()
			local is_nixos = s_os_release:match("nixos")
			storage = {
        if is_nixos == nil then
				  global_path = "/home/dylan/.config/nvim/.lazydo/tasks.json",
			  else
			    global_path = "/home/dylan/dotfiles/.config/.lazydo/tasks.json",
			  end
				auto_backup = true,
				backup_count = 1,
				compression = true,
			},
		},
	},
}
