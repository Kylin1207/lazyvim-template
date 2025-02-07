return {
  "jake-stewart/multicursor.nvim",
  event = "VeryLazy",
  config = function()
    require("multicursor-nvim").setup()
  end,
  keys = {
    {
      "<leader>mc",
      function()
        require("multicursor-nvim").clearCursors()
      end,
      mode = { "n", "v" },
      desc = "clear cursors",
    },
    {
      "<leader>mm",
      function()
        require("multicursor-nvim").matchCursors()
      end,
      mode = { "n", "v" },
      desc = "match cursors",
    },
    {
      "<c-leftmouse>",
      function()
        require("multicursor-nvim").handleMouse()
      end,
      mode = { "n" },
      desc = "add cursors by mouse",
    },
    {
      "<leader>mt",
      function()
        require("multicursor-nvim").toggleCursor()
      end,
      mode = { "n", "v" },
      desc = "toggle a cursor",
    },
    {
      "<leader>mn",
      function()
        require("multicursor-nvim").nextCursor()
      end,
      mode = { "n", "v" },
      desc = "goto next cursor",
    },
    {
      "<leader>mp",
      function()
        require("multicursor-nvim").prevCursor()
      end,
      mode = { "n", "v" },
      desc = "goto prev cursor",
    },
    {
      "<leader>ma",
      function()
        require("multicursor-nvim").matchAddCursor(1)
      end,
      mode = { "n", "v" },
      desc = "match add cursor",
    },
    {
      "<leader>ms",
      function()
        require("multicursor-nvim").matchSkipCursor(1)
      end,
      mode = { "n", "v" },
      desc = "match skip cursor",
    },
  },
}
