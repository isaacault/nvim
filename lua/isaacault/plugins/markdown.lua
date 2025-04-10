-- Markdown easier on the eyes.
return {
	"MeanderingProgrammer/markdown.nvim",
	main = "render-markdown",
	opts = {
		completions = { blink = { enabled = true } },
	},
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
}
