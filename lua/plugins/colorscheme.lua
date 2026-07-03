--return {
--{
--"iagorrr/noctishc.nvim",
--lazy = false,
--priority = 1000,
--config = function()
---- Load the colorscheme first
--vim.cmd([[colorscheme noctishc]])
--
---- Force transparency for common UI elements
--local hl_groups = {
--"Normal",
--"NormalNC",
--"NormalFloat",
--"SignColumn",
--"StatusLine",
--"StatusLineNC",
--"MsgArea",
--"TelescopeNormal",
--"NvimTreeNormal",
--"NeoTreeNormal",
--}
--
--for _, group in ipairs(hl_groups) do
--vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
--end
--end,
--},
--}

--return {
--"sainnhe/gruvbox-material",
--lazy = false,
--priority = 1000,
--config = function()
---- Kích hoạt chế độ trong suốt (0 là tắt, 1 là bật, 2 là trong suốt cả thanh status)
--vim.g.gruvbox_material_transparent_background = 1
--
---- Các cấu hình khác
--vim.g.gruvbox_material_background = "dark"
--vim.g.gruvbox_material_better_performance = 1 -- Nên bật để load nhanh hơn
--vim.g.gruvbox_material_foreground = "material" -- Hoặc "mix", "original"
--vim.g.gruvbox_material_ui_contrast = "high"
--
---- Load colorscheme
--vim.cmd([[colorscheme gruvbox-material]])
--end,
--}

--return {
--{
--"folke/tokyonight.nvim",
--lazy = false,
--priority = 1000,
--opts = {
--style = "night", -- Choose from: storm, moon, night, day
--transparent = true, -- This enables transparent background
--styles = {
--sidebars = "transparent", -- Sets transparent background for sidebars (NvimTree, etc.)
--floats = "transparent", -- Sets transparent background for floating windows
--},
--},
--},
--{
--"LazyVim/LazyVim",
--opts = {
--colorscheme = "tokyonight",
--},
--},
--}

--return {
---- Add the monokai plugin
--{
--"tanvirtin/monokai.nvim",
--lazy = false, -- Load this immediately on startup
--priority = 1000, -- Make sure it loads before other plugins
--config = function()
---- Trigger the colorscheme loader
--vim.cmd([[:colorscheme monokai]])
--end,
--},
--
---- Configure LazyVim to use it as the default
--{
--"LazyVim/LazyVim",
--opts = {
--colorscheme = "monokai",
--},
--},
--}

--return {
---- We override LazyVim's default theme loader
--{
--"LazyVim/LazyVim",
--opts = {
--colorscheme = "default", -- Use Neovim's default baseline
--},
--},
---- Force transparency and let your Kitty colors flow through
--{
--"nvim-treesitter/nvim-treesitter",
--opts = function()
---- Clear background groups so Kitty's pure black (#000000) shows
--local groups = {
--"Normal",
--"NormalNC",
--"Comment",
--"Constant",
--"Special",
--"Identifier",
--"Statement",
--"PreProc",
--"Type",
--"Underlined",
--"Todo",
--"String",
--"Function",
--"Conditional",
--"Repeat",
--"Operator",
--"Structure",
--"LineNr",
--"SignColumn",
--"StatusLine",
--"StatusLineNC",
--"EndOfBuffer",
--}
--for _, group in ipairs(groups) do
--vim.api.nvim_set_hl(0, group, { bg = "NONE" })
--end
--end,
--},
--}

--return {
--{
--"LazyVim/LazyVim",
--opts = {
--colorscheme = "default",
--},
--},
--}

return {
  -- Add the monochrome theme
  {
    "repl6669/repl69",
    name = "repl69",
    lazy = false,
    priority = 1000,
  },
  -- Configure LazyVim to use it
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "repl69",
    },
  },
}
