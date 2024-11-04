require("config.lazy")
require("lazy").setup("plugins")
require("config.settings")
require("config.mappings")

vim.keymap.set("n", "<leader>fs", ":Neotree filesystem reveal left<CR>")
