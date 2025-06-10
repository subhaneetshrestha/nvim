-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_user_command("ThemeKanagawa", function()
  vim.cmd("colorscheme kanagawa")
end, {})
vim.api.nvim_create_user_command("ThemeCatppuccin", function()
  vim.cmd("colorscheme catppuccin")
end, {})
vim.api.nvim_create_user_command("ThemeOxocarbon", function()
  vim.cmd("colorscheme oxocarbon")
end, {})
