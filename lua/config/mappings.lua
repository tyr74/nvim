local wk = require("which-key")
-- Harpoon bindings
local harpoon = require("harpoon")
wk.add({"<leader>h", group = "Harpoon"})
vim.keymap.set("n", "<leader>ha", function()
	harpoon:list():add()
end)
vim.keymap.set("n", "<leader>hs", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)
vim.keymap.set("n", "<leader>hw", function()
	harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>he", function()
	harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>hr", function()
	harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader>ht", function()
	harpoon:list():select(4)
end)
vim.keymap.set("n", "<leader>hp", function()
	harpoon:list():prev()
end)
vim.keymap.set("n", "<leader>hn", function()
	harpoon:list():next()
end)

-- Telescope bindings
local builtin = require("telescope.builtin")
wk.add({
  {"<leader>p", group = "Telescope searches"},
  {"<leader>l", group = "LSP"}
})
vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>pg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>pb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>ph", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>ps", builtin.grep_string, { desc = "Grep string" })
vim.keymap.set("n", "<leader>sr", builtin.registers, { desc = "Lists registers" })
vim.keymap.set("n", "<leader>sq", builtin.quickfix, { desc = "Lists quick fix list" })
vim.keymap.set("n", "<leader>sp", builtin.spell_suggest, { desc = "Lists spelling suggestions" })
vim.keymap.set("n", "<leader>ff", builtin.current_buffer_fuzzy_find, { desc = "Search inside current buffer" })
vim.keymap.set("n", "<leader>lci", builtin.lsp_incoming_calls, { desc = "Lists incoming calls for word under cursor" })
vim.keymap.set("n", "<leader>lco", builtin.lsp_outgoing_calls, { desc = "Lists outgoing calls for word under cursor" })
vim.keymap.set("n", "<leader>lr", builtin.lsp_references, { desc = "Lists references for word under cursor" })
vim.keymap.set("n", "<leader>li", builtin.lsp_implementations, { desc = "Lists implementations for word under cursor" })
vim.keymap.set("n", "<leader>ld", builtin.lsp_definitions, { desc = "Lists definitions for word under cursor" })
vim.keymap.set(
	"n",
	"<leader>lt",
	builtin.lsp_type_definitions,
	{ desc = "Lists type definitions for word under cursor" }
)
vim.keymap.set("n", "<leader>le", builtin.diagnostics, { desc = "Lists diagnostics" })
vim.keymap.set("n", "<leader>ts", builtin.treesitter, { desc = "Lists funcs & vars via TS" })

-- Neotree bindings
vim.keymap.set("n", "<leader>fs", function()
	vim.api.nvim_exec("Neotree filesystem toggle reveal left", true)
end, { desc = "Open filesystem with Neotree" })

-- Temporary Mason binding
vim.keymap.set("n", "<leader>m", ":Mason<CR>", { desc = "Open Mason" })

-- LSP/Null-ls bindings
vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, { desc = "See code actions" })
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format current buffer" })

-- Undotree bindings
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "See Undotree" })

-- Glow bindings
vim.keymap.set("n", "<leader>sm", ":Glow<CR>", { desc = "Show markdown preview" })

-- Moveline bindings
local moveline = require('moveline')
vim.keymap.set('n', '<M-k>', moveline.up, { desc = "Move current line up" })
vim.keymap.set('n', '<M-j>', moveline.down, { desc = "Move current line down" })
vim.keymap.set('v', '<M-k>', moveline.block_up, { desc = "Move current selection up" })
vim.keymap.set('v', '<M-j>', moveline.block_down, { desc = "Move current selection down" })

-- Debug bindings
local dap = require("dap")
local widgets = require("dap.ui.widgets")
wk.add({"<leader>d", group = "Debug"})
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>B", dap.set_breakpoint, { desc = "Set breakpoint" })
vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Open debugging" })
vim.keymap.set("n", "<leader>c", dap.step_over, { desc = "Step over" })
vim.keymap.set("n", "<leader>i", dap.step_into, { desc = "Step into" })
vim.keymap.set("n", "<leader>o", dap.step_out, { desc = "Step out" })
vim.keymap.set("n", "<Leader>dr", dap.repl.open, { desc = "Open REPL" })
vim.keymap.set("n", "<Leader>dl", dap.run_last, { desc = "Run last" })
vim.keymap.set({ "n", "v" }, "<Leader>dh", widgets.hover, { desc = "Debugging hover" })
vim.keymap.set({ "n", "v" }, "<Leader>dp", widgets.preview, { desc = "Debugging preview" })
-- vim.keymap.set("n", "<Leader>df", widgets.centered_float(widgets.frames))
-- vim.keymap.set("n", "<Leader>ds", widgets.centered_float(widgets.scopes))

-- Fugitive bindings
wk.add({"<leader>g", group = "Git"})
vim.keymap.set("n", "<leader>gs", ":Git<CR>", { desc = "Git status" })
vim.keymap.set("n", "<leader>ga", ":Git add .<CR>", { desc = "Git add" })
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", { desc = "Git commit" })
vim.keymap.set("n", "<leader>gb", ":Git branch<CR>", { desc = "Git branch" })
vim.keymap.set("n", "<leader>gp", ":Git push<CR>", { desc = "Git push" })
vim.keymap.set("n", "<leader>gd", ":Git diff<CR>", { desc = "Git diff" })

-- General Vim bindings
vim.keymap.set("n", "<leader>np", ":NoNeckPain<CR>", { desc = "Toggle NoNeckPain" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Write" })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Show filesystem with vim" })
vim.keymap.set("n", "<leader>st", "<C-w><C-w>", { desc = "Switch windows" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Attach next line to end of current" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Down half page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Up half page" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next occurrence" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous occurrence" })
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste and keep" })
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank to end of line to clipboard" })
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Next item in quickfix list" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Prev item in quickfix list" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Next error" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Prev error" })
vim.keymap.set("n", "<leader>qf", "<cmd>copen<cr>", {
	desc = "Open quickfix list",
})
vim.keymap.set("n", "<leader>qc", "<cmd>cclose<cr>", {
	desc = "Exit quickfix list",
})

vim.keymap.set("n", "j", [[v:count > 1 ? "m'" . v:count . 'j' : 'gj']], {
	expr = true,
})
vim.keymap.set("n", "k", [[v:count > 1 ? "m'" . v:count . 'k' : 'gk']], {
	expr = true,
})
vim.keymap.set("n", "gj", "<Down>")
vim.keymap.set("n", "gk", "<Up>")

vim.keymap.set("n", "c", '"_c')
vim.keymap.set("n", "C", '"_C')

-- Telescope integration with harpoon
-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
	local file_paths = {}
	for _, item in ipairs(harpoon_files.items) do
		table.insert(file_paths, item.value)
	end

	require("telescope.pickers")
		.new({}, {
			prompt_title = "Harpoon",
			finder = require("telescope.finders").new_table({
				results = file_paths,
			}),
			previewer = conf.file_previewer({}),
			sorter = conf.generic_sorter({}),
		})
		:find()
end

vim.keymap.set("n", "<leader>hm", function()
	toggle_telescope(harpoon:list())
end, { desc = "Open harpoon window" })
