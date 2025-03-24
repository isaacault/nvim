return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{
				"<leader>a",
				function()
					require("harpoon"):list():add()
				end,
				desc = "[A]dd file to Harpoon list",
			},
			{
				"<C-;>",
				function()
					local harpoon = require("harpoon")
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
				desc = "See files",
			},
			{
				"<C-j>",
				function()
					require("harpoon"):list():next()
				end,
				desc = "Next file",
			},
			{
				"<C-k>",
				function()
					require("harpoon"):list():prev()
				end,
				desc = "Previous file",
			},
		},
	},
}
