-- Bottom status line.
return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"f-person/git-blame.nvim",
			"catppuccin/nvim",
		},
		opts = {
			options = {
				theme = "catppuccin",
				component_separators = "",
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
				lualine_b = { "filename" },
				lualine_c = {
					{
						require("gitblame").get_current_blame_text,
						cond = require("gitblame").is_blame_text_available,
					},
				},
				lualine_x = {},
				lualine_y = { "progress" },
				lualine_z = {
					{ "location", separator = { right = "" }, left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = { "progress" },
				lualine_z = {},
			},
			tabline = {},
			extensions = {},
		},
	},
}
