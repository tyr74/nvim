return {
	{
		"nvim-tree/nvim-web-devicons",
	},

	{
		"mbbill/undotree",
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

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
}
