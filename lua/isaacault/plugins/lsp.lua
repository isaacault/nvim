return {
    "neovim/nvim-lspconfig",
    dependencies = {
		"williamboman/mason.nvim", 
		"williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
    },
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "LspInfo", "LspInstall", "LspUninstall" },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
			ensure_installed = {
				"clangd",
                "rust_analyzer",
			},
			handlers = {
				function (server_name)
					require("lspconfig")[server_name].setup {}
				end,
			},
        })
    end,
}

-- return {
-- 	{
-- 		"williamboman/mason.nvim", 
-- 		name = "mason",
-- 		build = ":MasonUpdate",
-- 		opts = {},
-- 	},
-- 	{
-- 		"williamboman/mason-lspconfig.nvim",
-- 		name = "mason-lspconfig",
-- 		dependencies = {
-- 			"mason",
-- 		},
-- 		opts = {
-- 			ensure_installed = {
-- 				"clangd",
-- 			},
-- 			handlers = {
-- 				function (server_name)
-- 					require("lspconfig")[server_name].setup {}
-- 				end,
-- 			},
-- 		},
-- 	},
-- 	{
-- 		"neovim/nvim-lspconfig",
-- 		dependencies = {
-- 			"williamboman/mason.nvim", 
-- 			"williamboman/mason-lspconfig.nvim",
-- 		},
--         event = { "BufReadPost", "BufNewFile" },
--         cmd = { "LspInfo", "LspInstall", "LspUninstall" },
-- 	}
-- 	-- {
-- 	-- 	"neovim/nvim-lspconfig",
-- 	-- 	dependencies = {
-- 	-- 		"williamboman/mason.nvim", 
-- 	-- 		"williamboman/mason-lspconfig.nvim",
-- 	-- 	},
-- 	-- 	mason_lspconfig_opts = {
-- 	-- 		ensure_installed = {
-- 	-- 			"clangd",
-- 	-- 		},
-- 	-- 		handlers = {
-- 	-- 			function (server_name)
-- 	-- 				print("SETTING UP FOR ISAAC: ", server_name)
-- 	-- 				require("lspconfig")[server_name].setup {}
-- 	-- 			end,
-- 	-- 		},
-- 	-- 	},
-- 	-- 	config = function(_, mason_lspconfig_opts)
-- 	-- 		require("mason").setup()
-- 	-- 		require("mason-lspconfig").setup(mason_lspconfig_opts)
-- 	-- 	end
-- 	-- },
-- }
