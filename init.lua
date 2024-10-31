require('config.lazy')
require('config.sets')
require("lazy").setup("plugins")
require('config.mappings')
 
vim.keymap.set('n', '<leader>fs', ':Neotree filesystem reveal left<CR>')
