return {
  'HiPhish/rainbow-delimiters.nvim',
  config = function()
    local rainbow = require('rainbow-delimiters')

    vim.g.rainbow = {
      strategy = {
        [''] = rainbow.strategy['global'],
        vim = rainbow.strategy['local'],
      },
      query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
      },
      priority = {
        [''] = 110,
        lua = 210,
      },
      highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
      },
    }
  end
}
