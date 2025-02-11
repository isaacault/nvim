return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      transparent_background = true,       -- disables setting the background color.
    },
    init = function()
      vim.cmd.colorscheme "catppuccin"
    end,
  },
}
