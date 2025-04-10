-- Use LSP and pattern matching to find project root.
-- Useful if nvim wasn't executed from project root.
return {
	"ahmedkhalf/project.nvim",
	init = function()
		require("project_nvim").setup({})
	end,
}
