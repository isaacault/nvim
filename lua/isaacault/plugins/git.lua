-- Show git commit details.
return {
	{
		"f-person/git-blame.nvim",
		-- Plugin will load due to dependency in statusline
		opts = {
			enabled = false, -- if you want to enable the plugin
			message_template = "<date> • <author> • <summary>",
			date_format = "%d-%m-%Y",
			display_virtual_text = 0, -- don't show in file as text is shown in statusline
		},
	},
}
