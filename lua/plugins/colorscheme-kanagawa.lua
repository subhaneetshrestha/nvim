return {
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    lazy = false,
    opts = {
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,
      dimInactive = true,
      terminalColors = true,
      colors = {
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      overrides = function(colors)
        return {
          NormalFloat = { bg = colors.theme.ui.bg_p1 },
          FloatBorder = { fg = colors.theme.ui.special, bg = colors.theme.ui.bg_p1 },
          CursorLineNr = { fg = colors.theme.diag.warning },
          Pmenu = { fg = colors.theme.ui.shade0, bg = colors.theme.ui.bg_p1 },
          PmenuSel = { fg = "NONE", bg = colors.theme.ui.bg_p2 },
          TelescopeTitle = { fg = colors.theme.ui.special, bold = true },
          TelescopePromptNormal = { bg = colors.theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = colors.theme.ui.bg_p1, bg = colors.theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = colors.theme.ui.shade0, bg = colors.theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = colors.theme.ui.bg_m1, bg = colors.theme.ui.bg_m1 },
        }
      end,
      theme = "dragon", -- options: wave, dragon, lotus
      background = {
        dark = "wave",
        light = "lotus",
      },
    },
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd("colorscheme kanagawa")
    end,
  },
}
