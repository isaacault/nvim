return {
    { 
        "danymat/neogen", 
        config = true,
        -- Uncomment next line if you want to follow only stable versions
        -- version = "*" 
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "L3MON4D3/LuaSnip",
        },
        config = function()
            require('neogen').setup({ snippet_engine = "luasnip" })
            local opts = { noremap = true, silent = true }
            vim.api.nvim_set_keymap("n", "<Leader>s", ":lua require('neogen').generate()<CR>", opts)
        end,
    }
}
