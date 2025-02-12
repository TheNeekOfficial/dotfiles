local fd_os_release = assert(io.open("/etc/os-release"), "r")
local s_os_release = fd_os_release:read("*a")
fd_os_release:close()
s_os_release = s_os_release:lower()
local is_nixos = s_os_release:match("nixos")
local storage_path = is_nixos and "/home/dylan/dotfiles/.config/nvim/.lazydo/tasks.json"
	or "/home/dylan/.config/nvim/.lazydo/tasks.json"
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
			storage = {
				global_path = storage_path,
				auto_backup = true,
				backup_count = 1,
				compression = true,
			},
		},
	},
}
