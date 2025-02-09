return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      highlight_overrides = {
        mocha = function(mocha)
          return {
            Comment = { fg = "#FFA500", style = { "italic" } },
            Keyword = { fg = "#FFFF00" },
            Conditional = { fg = "#FFFF00" },
            Repeat = { fg = "#FFFF00" },
            Label = { fg = "#E794FF", style = { "italic" } },
            Operator = { fg = "#FFFF00" },
            Exception = { fg = "#FFFF00" },
            PreProc = { fg = "#FFFF00" },
            Include = { fg = "#FFFF00" },
            Define = { fg = "#FFFF00" },
            PreCondit = { fg = "#FFFF00" },
            Macro = { fg = "#FC7EFC", style = { "bold" } },
            Constant = { fg = "#FFFFFF", style = { "bold" } },
            String = { fg = "#EFC3CA" },
            Special = { fg = "#F38BA8" },
            Character = { fg = "#EFC3CA" },
            SpecialChar = { link = "Special" },
            Boolean = { link = "String" },
            Number = { link = "String" },
            Float = { link = "String" },
            Type = { fg = "#5BDD26" },
            Function = { fg = "#17E3EB" },
            -- keyword
            ["@keyword.return"] = { link = "Keyword" },
            ["@keyword.function"] = { link = "Keyword" },
            -- variable
            ["@variable"] = { fg = "#FFFFFF" },
            ["@variable.builtin"] = { link = "Keyword" },
            -- ["@variable.parameter"] = { fg = "#FFFFFF", style = { "italic" } },
            ["@variable.member"] = { fg = "#FFFFFF", style = { "bold" } },
            ["@constant"] = { link = "Constant" },
            ["@constant.builtin"] = { link = "Constant" },
            ["@constant.macro"] = { link = "Macro" },
            -- Literals
            ["@string"] = { link = "String" },
            ["@string.documentation"] = { link = "String" },
            ["@string.regexp"] = { link = "String" },
            ["@string.escape"] = { link = "String" },
            ["@string.special"] = { link = "Special" },
            ["@string.special.path"] = { link = "Special" },
            ["@string.special.symbol"] = { link = "String" },
            ["@string.special.url"] = { link = "Special" },
            ["@character"] = { link = "Character" },
            ["@character.special"] = { link = "SpecialChar" },
            ["@boolean"] = { link = "Boolean" },
            ["@number"] = { link = "Number" },
            ["@number.float"] = { link = "Float" },
            -- types
            ["@type"] = { link = "Type" },
            ["@type.definition"] = { link = "Type" },
            ["@type.builtin"] = { link = "Type" },
            ["@type.builtin.c"] = { link = "Type" },
            ["@type.builtin.cpp"] = { link = "Type" },
            -- function
            ["@function"] = { link = "Function" },
            ["@function.builtin"] = { link = "Function" },
            ["@function.call"] = { link = "Function" },
            ["@function.macro"] = { link = "Macro" },
            ["@attribute"] = { link = "Function" },
            -- else
            ["@module"] = { link = "Label" },
            ["@label"] = { link = "Label" },
          }
        end,
      },
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
    },
  },
  { "ellisonleao/gruvbox.nvim" },
  { "Mofiqul/vscode.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
