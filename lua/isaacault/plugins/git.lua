return {
    {
        "f-person/git-blame.nvim",
        -- Plugin will load due to dependency in statusline
        opts = {
            enabled = true, -- if you want to enable the plugin
            message_template = " <author> • <date> • <summary> • <<sha>>",
            date_format = "%Y-%m-%d %H:%M:%S",
            display_virtual_text = 0, -- don't show in file as text is shown in statusline
        },
    },
}
