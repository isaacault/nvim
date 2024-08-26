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
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "j-hui/fidget.nvim",
    },
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "LspInfo", "LspInstall", "LspUninstall" },
    config = function()
        -- Set up lspconfig.
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require("fidget").setup()
        require("mason").setup()
        require("mason-lspconfig").setup({
            PATH = "append",
			ensure_installed = {
                "lua_ls",
                "rust_analyzer",
			},
			handlers = {
				function (server_name)
					require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
				end,
                ["lua_ls"] = function ()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" }
                                }
                            }
                        }
                    }
                end,
			},
        })
        require("lspconfig")['clangd'].setup {}
              -- Set up nvim-cmp.
      local cmp = require('cmp')
        local cmp_select = { behavior = cmp.SelectBehavior.Select }

      cmp.setup({
        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-e>'] = cmp.mapping.abort(),
          ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
          ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
          ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          ['<C-Space>'] = cmp.mapping.complete(),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' }, -- For luasnip users.
        }, {
          { name = 'buffer' },
        })
      })

      -- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
      -- Set configuration for specific filetype.
      --[[ cmp.setup.filetype('gitcommit', {
        sources = cmp.config.sources({
          { name = 'git' },
        }, {
          { name = 'buffer' },
        })
     })
     require("cmp_git").setup() ]]--

      -- -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
      -- cmp.setup.cmdline({ '/', '?' }, {
      --   mapping = cmp.mapping.preset.cmdline(),
      --   sources = {
      --     { name = 'buffer' }
      --   }
      -- })
      --
      -- -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      -- cmp.setup.cmdline(':', {
      --   mapping = cmp.mapping.preset.cmdline(),
      --   sources = cmp.config.sources({
      --     { name = 'path' }
      --   }, {
      --     { name = 'cmdline' }
      --   }),
      --   matching = { disallow_symbol_nonprefix_matching = false }
      -- })
      --
      -- -- Set up lspconfig.
      -- local capabilities = require('cmp_nvim_lsp').default_capabilities()
      -- -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
      -- require('lspconfig')['clangd'].setup {
      --   capabilities = capabilities
      -- }
      -- require('lspconfig')['rust_analyzer'].setup {
      --   capabilities = capabilities
      -- }


        vim.diagnostic.config({
            update_in_insert = true,
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
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
