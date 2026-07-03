-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- vim.api.nvim_create_autocmd("InsertEnter", {
-- File: ~/.config/nvim/lua/config/autocmds.lua

-- Hiện statusline khi vào Insert Mode
--vim.api.nvim_create_autocmd("InsertEnter", {
--callback = function()
--vim.opt.laststatus = 2
--end,
--})
--
---- Ẩn statusline khi thoát khỏi Insert Mode
--vim.api.nvim_create_autocmd("InsertLeave", {
--callback = function()
--vim.opt.laststatus = 0
--end,
--})

-- Force transparent background across all colorschemes
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    -- Define all the highlight groups you want to strip backgrounds from
    local groups = {
      "Normal",
      "NormalNC",
      "NormalFloat",
      "SignColumn",
      "StatusLine",
      "StatusLineNC",
      "LineNr",
      "CursorLineNr",
      "Folded",
      "FoldColumn",
      "Pmenu",
      "PmenuSel",
    }

    for _, group in ipairs(groups) do
      vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
    end
  end,
})
