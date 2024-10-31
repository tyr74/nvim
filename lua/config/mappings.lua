-- Harpoon Bindings
local harpoon = require('harpoon')

vim.keymap.set('n', '<leader>ha', function() harpoon:list():add() end)
vim.keymap.set('n', '<leader>hs', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set('n', '<leader>hw', function() harpoon:list():select(1) end)
vim.keymap.set('n', '<leader>he', function() harpoon:list():select(2) end)
vim.keymap.set('n', '<leader>hr', function() harpoon:list():select(3) end)
vim.keymap.set('n', '<leader>ht', function() harpoon:list():select(4) end)
vim.keymap.set('n', '<leader>hp', function() harpoon:list():prev() end)
vim.keymap.set('n', '<leader>hn', function() harpoon:list():next() end)

-- Telescope Bindings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>pg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>ph', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>ps', builtin.grep_string, { desc = 'Grep string' })
vim.keymap.set('n', '<leader>sr', builtin.registers, { desc = 'Lists registers' })
vim.keymap.set('n', '<leader>sq', builtin.quickfix, { desc = 'Lists quick fix list' })
vim.keymap.set('n', '<leader>sp', builtin.spell_suggest, { desc = 'Lists spelling suggestions' })
vim.keymap.set('n', '<leader>ff', builtin.current_buffer_fuzzy_find, { desc = 'Search inside current buffer' })
vim.keymap.set('n', '<leader>lci', builtin.lsp_incoming_calls, { desc = 'Lists incoming calls for word under cursor' })
vim.keymap.set('n', '<leader>lco', builtin.lsp_outgoing_calls, { desc = 'Lists outgoing calls for word under cursor' })
vim.keymap.set('n', '<leader>lr', builtin.lsp_references, { desc = 'Lists references for word under cursor' })
vim.keymap.set('n', '<leader>li', builtin.lsp_implementations, { desc = 'Lists implementations for word under cursor' })
vim.keymap.set('n', '<leader>ld', builtin.lsp_definitions, { desc = 'Lists definitions for word under cursor' })
vim.keymap.set('n', '<leader>lt', builtin.lsp_type_definitions, { desc = 'Lists type definitions for word under cursor' })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Git files' })
vim.keymap.set('n', '<leader>gl', builtin.git_commits, { desc = 'Git commits' })
vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = 'Git branches' })
vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Git status' })
vim.keymap.set('n', '<leader>ts', builtin.treesitter, { desc = 'Lists funcs & vars via TS' })

-- Neotree Bindings
vim.keymap.set('n', '<leader>fs', function() vim.api.nvim_exec('Neotree filesystem toggle reveal left', true) end)


-- General Vim Bindings
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>st', '<C-w><C-w>')
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('x', '<leader>p', "\"_dP")
vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")
vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- Telescope integration with harpoon
-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require("telescope.pickers").new({}, {
    prompt_title = "Harpoon",
    finder = require("telescope.finders").new_table({
      results = file_paths,
    }),
    previewer = conf.file_previewer({}),
    sorter = conf.generic_sorter({}),
  }):find()
end

vim.keymap.set("n", "<leader>hm", function() toggle_telescope(harpoon:list()) end, { desc = "Open harpoon window" })
