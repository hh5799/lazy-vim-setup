return {
  -- Add the GitHub theme plugin
  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- Load this during startup
    priority = 1000, -- Load it before all other plugins
    config = function()
      require("github-theme").setup({
        -- options go here
      })
      -- Set the specific variant you want
      -- Options: github_dark, github_dark_dimmed, github_dark_default, github_light, github_light_default
      vim.cmd("colorscheme github_dark_default")
    end,
  },

  -- Configure LazyVim to recognize it
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_default",
    },
  },
}
