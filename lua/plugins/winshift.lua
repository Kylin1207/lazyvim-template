return {
  "sindrets/winshift.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<C-w><Right>",
      function()
        vim.cmd("WinShift right")
      end,
      mode = { "n", "v" },
      desc = "window shift right",
    },
    {
      "<C-w><Left>",
      function()
        vim.cmd("WinShift left")
      end,
      mode = { "n", "v" },
      desc = "window shift left",
    },
    {
      "<c-w><Up>",
      function()
        vim.cmd("WinShift up")
      end,
      mode = { "n", "v" },
      desc = "window shift up",
    },
    {
      "<c-w><Down>",
      function()
        vim.cmd("WinShift down")
      end,
      mode = { "n", "v" },
      desc = "window shift down",
    },
  },
}
