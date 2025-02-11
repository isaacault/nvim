return {
  {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.8',
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
        -- This will not install any breaking changes.
        -- For major updates, this must be adjusted manually.
        version = "^1.0.0",
      },
    },
    keys = {
      {
        '<leader>ff',
        "<cmd>Telescope find_files<cr>",
        desc = "Find file"
      },
      {
        '<leader>pf',
        "<cmd>Telescope git_files<cr>",
        desc = "Find file in git project"
      },
      {
        '<leader>fg',
        function()
          require("telescope").extensions.live_grep_args.live_grep_args()
        end,
        desc = "Live grep in project"
      },
      {
        '<leader>vh',
        "<cmd>Telescope help_tags<cr>",
        desc = "Vim help tags"
      },
    },
    config = function()
      require("telescope").setup {
        extensions = {
          live_grep_args = {
            auto_quoting = true, -- enable/disable auto-quoting
            mappings = {         -- extend mappings
              i = {
                ["<C-k>"] = require("telescope-live-grep-args.actions").quote_prompt(),
              },
            },
          },
        },
      }
      require("telescope").load_extension("live_grep_args") -- load it after `setup`
    end,
  },
}
