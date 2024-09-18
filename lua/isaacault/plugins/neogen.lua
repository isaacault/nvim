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
                "<leader>s",
                "<cmd>Neogen<cr>",
                desc = "Generate snippet",
                silent = true,
            },
        },
    }
}
