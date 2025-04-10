-- In C/C++, comment with // rather than /* */.
return {
	"folke/ts-comments.nvim",
	opts = {
		lang = {
			c = "// %s",
			cpp = "// %s",
		},
	},
	event = "VeryLazy",
	enabled = vim.fn.has("nvim-0.10.0") == 1,
}
