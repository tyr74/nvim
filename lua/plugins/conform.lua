return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua", lsp_format = "fallback" },
				python = { "ruff_fix", "ruff_format", lsp_format = "fallback" },
				rust = { "rustfmt", lsp_format = "fallback" },
				go = { "gofmt", lsp_format = "fallback" },
				java = { "google-java-format" },
				markdown = { "markdownlint", "mdformat" },
				["*"] = { "codespell", "trim_whitespace", "trim_newlines" },
			},
			format_on_save = {
				-- I recommend these options. See :help conform.format for details.
				lsp_format = "fallback",
				timeout_ms = 500,
			},
		})
	end,
}
