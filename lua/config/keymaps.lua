-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Quickly reload the colorscheme config file while testing

-- Thêm dòng này vào file lua/config/keymaps.lua của bạn
vim.keymap.set("n", "<C-g>", "gg=G<C-o>", { desc = "Format toàn bộ văn bản" })
