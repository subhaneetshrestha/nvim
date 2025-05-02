return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = false,
      term_colors = true,
      no_italic = false,
      no_bold = false,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        telescope = {
          enabled = true,
        },
        lsp_trouble = true,
        notify = true,
        mini = true,
        leap = true,
        markdown = true,
        mason = true,
        which_key = true,
        indent_blankline = {
          enabled = true,
          colored_indent_levels = false,
        },
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
      },
      color_overrides = {
        mocha = {
          base = "#1e1e2e",
          mantle = "#181825",
          crust = "#11111b",
        },
      },
      highlight_overrides = {
        mocha = function(C)
          return {
            CursorLine = { bg = C.surface0 },
            StatusLine = { fg = C.text, bg = C.surface0, style = { "bold" } },
            LineNr = { fg = C.overlay1 },
            Visual = { bg = C.surface1 },
          }
        end,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
