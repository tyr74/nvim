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
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.diagnostics.staticcheck,
        null_ls.builtins.diagnostics.trivy,
        null_ls.builtins.diagnostics.selene,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.asmfmt,
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.mdformat,
      },
    })
  end,
}
