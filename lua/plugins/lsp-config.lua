return {
	{
		"VonHeikemen/lsp-zero.nvim",
		dependencies = {
			-- LSP Support
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",

      -- Autocompletion
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",

			-- Snippets
			"L3MON4D3/LuaSnip",
			"rafamadriz/friendly-snippets",
		},
		config = function()
			-- Reserve a space in the gutter
			-- This will avoid an annoying layout shift in the screen
			vim.opt.signcolumn = "yes"

			-- Add cmp_nvim_lsp capabilities settings to lspconfig
			-- This should be executed before you configure any language server
			local lspconfig_defaults = require("lspconfig").util.default_config
			lspconfig_defaults.capabilities = vim.tbl_deep_extend(
				"force",
				lspconfig_defaults.capabilities,
				require("cmp_nvim_lsp").default_capabilities()
			)

			-- This is where you enable features that only work
			-- if there is a language server active in the file
			vim.api.nvim_create_autocmd("LspAttach", {
				desc = "LSP actions",
				callback = function(event)
					local id = vim.tbl_get(event, "data", "client_id")
					local client = id and vim.lsp.get_client_by_id(id)
					if client == nil then
						return
					end

					local opts = { buffer = event.buf }

					vim.keymap.set("n", "<localleader>K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
					vim.keymap.set("n", "<localleader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
					vim.keymap.set("n", "<localleader>lD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
					vim.keymap.set("n", "<localleader>li", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
					vim.keymap.set("n", "<localleader>lo", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
					vim.keymap.set("n", "<localleader>lr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
					vim.keymap.set("n", "<localleader>ls", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
					vim.keymap.set("n", "<localleader><F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
					vim.keymap.set("n", "<localleader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
					if vim.lsp.inlay_hint then
						vim.keymap.set("n", "<leader>lh", function(bufnr)
							vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled(), { bufnr })
						end, { desc = "Toggle inlay hints" })
					end
				end,
			})
			require("mason").setup({})
			require("mason-lspconfig").setup({
				ensure_installed = {
					"pylyzer",
					-- "hls",
					"ruff",
					"rust_analyzer",
					-- "bacon-ls",
					-- "asm_lsp",
					"clangd",
					-- "harper_ls",
					"lua_ls",
					"marksman",
					-- "matlab_ls",
					"gopls",
					"zls",
					"jdtls",
				},
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({
							on_attach = function(bufnr)
								if vim.lsp.inlay_hint then
									vim.lsp.inlay_hint.enable(true, { bufnr })
								end
							end,
						})
					end,

					rust_analyzer = function()
						require("lspconfig").rust_analyzer.setup({
							on_attach = function(bufnr)
								if vim.lsp.inlay_hint then
									vim.lsp.inlay_hint.enable(true, { bufnr })
								end
							end,
							settings = {
								["rust-analyzer"] = {
									imports = {
										granularity = {
											group = "module",
										},
										prefix = "self",
									},
									cargo = {
										buildScripts = {
											enable = true,
										},
									},
									procMacro = {
										enable = true,
									},
									diagnostics = {
										enable = true,
									},
									formatting = {
										enable = false,
									},
									check = {
										command = "clippy",
									},
								},
							},
						})
					end,
				},
			})

			local cmp = require("cmp")

			cmp.setup({
				sources = {
					{ name = "nvim_lsp" },
				},
				snippet = {
					expand = function(args)
						vim.snippet.expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({}),
			})
		end,
	},

	{
		"mfussenegger/nvim-jdtls",
	},
}
