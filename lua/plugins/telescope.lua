return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  event = 'VeryLazy',
  branch = '0.1.x',
  config = function()
    -- Telescope stuff I need to import for configuration
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')
    local actions = require('telescope.actions')
    local themes = require('telescope.themes')
    -- local action_state = require 'telescope.actions.state'
    -- local previewers = require 'telescope.previewers'
    -- local pickers = require 'telescope.pickers'
    -- local sorters = require 'telescope.sorters'
    -- local finders = require 'telescope.finders'
    -- local conf = require('telescope.config').values

    telescope.setup {
      defaults = {
        mappings = {
          n = {
            ['st'] = actions.select_vertical,
            ['<C-v>'] = false,
          },
        },
        color_devicons = true,
        prompt_prefix = '🔍 ',
        preview_cutoff = 1,
      }
    }
  end
}
