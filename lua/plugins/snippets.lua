return {
  {
    "L3MON4D3/LuaSnip",
    -- opts is where we change the plugin's settings
    opts = function(_, opts)
      -- Load custom snippets from your JSON files
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = { vim.fn.stdpath("config") .. "/snippets" },
      })
    end,
  },
}
