-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("n", "<leader>sN", ":Telescope notify<cr>", { desc = "Notifications" })
vim.keymap.del({ "n", "i", "v" }, "<A-k>")
vim.keymap.del({ "n", "i", "v" }, "<A-j>")

vim.keymap.set("n", ",f", function()
  require("neo-tree.command").execute({ toggle = false, dir = require("lazyvim.util").get_root() })
end, { desc = "Explorer NeoTree (root dir)" })

vim.keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sb", require("telescope.builtin").buffers, { desc = "[S]earch [B]uffers" })

vim.keymap.set("n", "<leader>sB", function()
  require("telescope.builtin").live_grep({ grep_open_files = true })
end, { desc = "[S]earch in open [B]uffers" })

vim.keymap.set({ "n", "v" }, "y%", ":let @+=expand('%')<cr>", { desc = "Copy relative file path" })
