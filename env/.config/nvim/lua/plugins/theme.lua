-- theme.lua
--
-- Set the theme plugin and desired colorscheme
--
return {

  -- Catppuccin is the theme I'm using everywhere at the moment
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'auto',
        background = {
          light = 'latte',
          dark = 'mocha',
        },
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },

  -- dark-notify updates neovim's theme with the system settings in Mac
  {
    'cormacrelf/dark-notify',
    config = function()
      require('dark_notify').run()
    end,
  },
}
