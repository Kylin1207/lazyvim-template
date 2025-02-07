return {
  "stevearc/overseer.nvim",
  init = function()
    vim.keymap.set("n", "<leader>ot", "<cmd>OverseerToggle<cr>", { desc = "Task List" })
    vim.keymap.set("n", "<leader>or", "<cmd>OverseerRun<cr>", { desc = "Run Task" })
  end,
  config = function()
    local overseer = require("overseer")
    overseer.setup({
      dap = false,
      templates = {
        "make",
        "cargo",
        "shell",
        "llvm_config",
        "llvm_build",
        -- "llvm_config_and_build",
      },
    })
  end,
}
