return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "asm_lsp",
          "clangd",
          "harper_ls",
          "gopls",
          "marksman",
          "matlab_ls",
          "pylyzer",
          "rust_analyzer",
          "zls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.pylyzer.setup({})
      lspconfig.ruff.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.asm_lsp.setup({})
      lspconfig.clangd.setup({})
      lspconfig.harper_ls.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.marksman.setup({})
      lspconfig.matlab_ls.setup({})
      lspconfig.gopls.setup({})
      lspconfig.zls.setup({})
    end,
  },
}
