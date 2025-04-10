-- Automatically provide character pairs i.e. "", {}, (), etc.
return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
}
