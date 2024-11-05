return {
	{
		"nvim-tree/nvim-web-devicons",
	},

	{
		"mbbill/undotree",
	},

	{
		"tpope/vim-commentary",
	},

	{
		"Wansmer/sibling-swap.nvim",
		requires = { "nvim-treesitter" },
		config = function()
			require("sibling-swap").setup({ --[[ your config ]]
			})
		end,
	},

	{
		"willothy/moveline.nvim",
		build = "make",
	},

	{
		"shortcuts/no-neck-pain.nvim",
	},

	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
		opts = {},
	},

	{
		"ellisonleao/glow.nvim",
		config = true,
		cmd = "Glow",
	},

	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			size = 50,
			direction = "vertical",
		},
	},
}
