return {
	{
		"nvim-telescope/telescope.nvim",
		tag = '0.1.8',
		dependencies = {
		    "nvim-lua/plenary.nvim",
		},
		keys = {
			{
				'<leader>ff', 
				"<cmd>Telescope find_files<cr>", 
				desc = "Find file"
			},
			{
				'<leader>pf', 
				"<cmd>Telescope git_files<cr>", 
				desc = "Find file in git project"
			},
			{
				'<leader>fg', 
				"<cmd>Telescope live_grep<cr>", 
				desc = "Live grep in project"
			},
		},
        opts = {},
	},
}
