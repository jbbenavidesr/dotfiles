-- colorscheme.lua
--
-- Set the theme plugin and desired colorscheme
--
return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'catppuccin-mocha'
  end,
}
