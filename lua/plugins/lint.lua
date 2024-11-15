return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			makefile = { "checkmake" },
			c = { "clangtidy", "cppcheck" },
			cpp = { "clangtidy", "cppcheck" },
			rust = { "bacon", "clippy" },
			markdown = { "markdownlint" },
			python = { "mypy", "ruff" },
			lua = { "selene" },
			go = { "staticcheck" },
		}
	end,
}
