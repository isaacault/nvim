-- Colorscheme.
return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		opts = {
			transparent_background = true, -- disables setting the background color.
			integrations = {
				mason = false,
			},
		},
		init = function()
			vim.cmd.colorscheme("catppuccin")
		end,
		build = function()
			vim.cmd("CatppuccinCompile")
		end,
	},
}
