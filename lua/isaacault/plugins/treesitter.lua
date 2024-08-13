return {
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {
                    "c",
                    "cmake",
                    "cpp",
                    "lua",
                    "python",
                    "rust",
                    "vim",
                    "vimdoc",
          },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
},
}
