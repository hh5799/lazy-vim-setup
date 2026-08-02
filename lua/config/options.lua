-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.clipboard = "unnamedplus"
vim.g.autoformat = true
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.cursorline = false
vim.opt.termguicolors = true
-- Sử dụng bảng màu mặc định của Neovim
vim.g.lazyvim_colorscheme = "default"

-- Nếu bạn dùng Neovim 0.10+ và muốn giao diện hiện đại hơn một chút, hãy dùng:
vim.g.lazyvim_colorscheme = "habamax"
