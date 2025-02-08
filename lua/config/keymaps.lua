-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap(
  "n",
  "<C-]>",
  ":vsplit<CR>:lua vim.lsp.buf.definition()<CR>",
  { noremap = true, silent = true, desc = "Open function definition in a horizontal split" }
)

vim.api.nvim_set_keymap(
  "n",
  "<C-o>",
  ":bd!<CR>:bp<CR>",
  { noremap = true, silent = true, desc = "Close vsplit window and buffer, then jump back to source file" }
)

vim.api.nvim_set_keymap(
  "n",
  "<C-S-C>",
  '"+y',
  { noremap = true, silent = true, desc = "Copy to system clipboard (normal mode)" }
)

vim.api.nvim_set_keymap(
  "v",
  "<C-S-C>",
  '"+y',
  { noremap = true, silent = true, desc = "Copy to system clipboard (visual mode)" }
)

vim.api.nvim_set_keymap(
  "c",
  "<C-S-C>",
  "<C-R>+",
  { noremap = true, silent = true, desc = "Copy to system clipboard (command mode)" }
)

vim.api.nvim_set_keymap(
  "n",
  "<C-S-V>",
  '"+p',
  { noremap = true, silent = true, desc = "Paste from system clipboard (normal mode)" }
)

vim.api.nvim_set_keymap(
  "v",
  "<C-S-V>",
  '"+p',
  { noremap = true, silent = true, desc = "Paste from system clipboard (visual mode)" }
)

vim.api.nvim_set_keymap(
  "c",
  "<C-S-V>",
  "<C-R>+",
  { noremap = true, silent = true, desc = "Paste from system clipboard (command mode)" }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>mb",
  ":lua require('custom.mark').add_global_mark()<CR>",
  { noremap = true, silent = true, desc = "Add a global mark" }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>md",
  ":lua require('custom.mark').delete_global_mark()<CR>",
  { noremap = true, silent = true, desc = "Delete the last global mark" }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>mr",
  ":lua require('custom.mark').delete_all_global_marks()<CR>",
  { noremap = true, silent = true, desc = "Delete all global marks" }
)
