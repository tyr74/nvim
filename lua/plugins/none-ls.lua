return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    'nvimtools/none-ls-extras.nvim',
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        --null_ls.builtins.diagnostics.cpplint,
        require('none-ls.diagnostics.cpplint'),
        null_ls.builtins.diagnostics.markdownlint,
        null_ls.builtins.diagnostics.semgrep,
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.diagnostics.staticcheck,
        null_ls.builtins.diagnostics.trivy,
        null_ls.builtins.diagnostics.selene,
        null_ls.builtins.diagnostics.checkmake,
        null_ls.builtins.diagnostics.checkstyle.with({
          extra_args = { '-c', '/google_checks.xml' },
        }),
        null_ls.builtins.diagnostics.codespell,
        null_ls.builtins.diagnostics.mlint,
        null_ls.builtins.diagnostics.todo_comments,
        null_ls.builtins.formatting.codespell,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.asmfmt,
        -- null_ls.builtins.formatting.rustfmt,
        require('none-ls.formatting.rustfmt'),
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.mdformat,
        null_ls.builtins.formatting.google_java_format,
        null_ls.builtins.code_actions.proselint,
        null_ls.builtins.diagnostics.proselint,
      },
    })
  end,
}
