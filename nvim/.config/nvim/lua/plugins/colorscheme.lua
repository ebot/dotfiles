return {
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    name = "solarized",
    priority = 1000,
    config = function()
      -- vim.o.background = "dark" -- or 'light'
      -- vim.cmd.colorscheme("solarized")
    end,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    branch = "osaka",
    lazy = true,
    name = "solarized-osaka",
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "solarized",
      -- colorscheme = "solarized-osaka",
      colorscheme = "catppuccin",
    },
  },
}
