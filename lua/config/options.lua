-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.textwidth = 80
vim.opt.wrap = true
vim.opt.number = true
vim.opt.encoding = "utf8"

vim.g.python_host_prog = "/home/ira/software/miniforge3/envs/py310/bin/python"
vim.g.python3_host_prog = "/home/ira/software/miniforge3/envs/py310/bin/python"
vim.g.clipboard = {
  name = "WslClipboard",
  copy = {
    ["+"] = "clip.exe",
    ["*"] = "clip.exe",
  },
  paste = {
    ["+"] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    ["*"] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  },
  cache_enabled = 0,
}

if vim.g.neovide then
  vim.o.guifont = "Maple Mono NF:h16:i"
end
