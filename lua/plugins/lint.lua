return {
  "mfussenegger/nvim-lint",
  config = function()
    require("lint").linters_by_ft = {
      makefile = { "checkmake" },
      c = { "clangtidy", "cppcheck" },
      cpp = { "clangtidy", "cppcheck" },
      rust = { "clippy" },
      markdown = { "markdownlint" },
      python = { "mypy", "ruff" },
      lua = { "selene" },
      ["*"] = { "codespell" },
    }
  end,
}
