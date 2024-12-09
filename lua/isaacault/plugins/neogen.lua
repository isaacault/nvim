return {
    {
        "danymat/neogen",
        -- Uncomment next line if you want to follow only stable versions
        -- version = "*"
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "L3MON4D3/LuaSnip",
        },
        opts = {
            snippet_engine = "luasnip",
        },
        keys = {
            {
                "<Leader>s",
                function()
                    require('neogen').generate()
                end,
                { noremap = true, silent = true },
                desc = "Generate snippet"
            },
        },
    }
}
