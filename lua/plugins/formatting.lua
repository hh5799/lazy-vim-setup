return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        -- Add these lines:
        c = { "clang-format" },
        cpp = { "clang-format" },
      },
    },
  },
}
