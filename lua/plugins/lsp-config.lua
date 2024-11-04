return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    "lukas-reineke/lsp-format.nvim",
    "ms-jpq/coq_nvim",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local on_attach = require("lsp-format").on_attach
      local coq = require("coq")
      local lspconfig = require("lspconfig")

      lspconfig.pylyzer.setup(coq.lsp_ensure_capabilities({
        capabilities = capabilities,
        on_attach = on_attach,
      }))
      lspconfig.ruff.setup(coq.lsp_ensure_capabilities({
        capabilities = capabilities,
        on_attach = on_attach,
      }))
      lspconfig.rust_analyzer.setup(coq.lsp_ensure_capabilities({
        capabilities = capabilities,
        on_attach = on_attach,
      }))
      lspconfig.bacon_ls.setup(coq.lsp_ensure_capabilities({
        capabilities = capabilities,
        on_attach = on_attach,
      }))
      lspconfig.asm_lsp.setup(coq.lsp_ensure_capabilities({
        capabilities = capabilities,
        on_attach = on_attach,
      }))
      lspconfig.clangd.setup(coq.lsp_ensure_capabilities({
        capabilities = capabilities,
        on_attach = on_attach,
      }))
      lspconfig.harper_ls.setup(coq.lsp_ensure_capabilities({
        capabilities = capabilities,
        on_attach = on_attach,
      }))
      lspconfig.lua_ls.setup(coq.lsp_ensure_capabilities({
        capabilities = capabilities,
        on_attach = on_attach,
      }))
      lspconfig.marksman.setup(coq.lsp_ensure_capabilities({
        capabilities = capabilities,
        on_attach = on_attach,
      }))
      lspconfig.matlab_ls.setup(coq.lsp_ensure_capabilities({
        capabilities = capabilities,
        on_attach = on_attach,
      }))
      lspconfig.gopls.setup(coq.lsp_ensure_capabilities({
        capabilities = capabilities,
        on_attach = on_attach,
      }))
      lspconfig.zls.setup(coq.lsp_ensure_capabilities({
        capabilities = capabilities,
        on_attach = on_attach,
      }))
      lspconfig.jdtls.setup(coq.lsp_ensure_capabilities({
        capabilities = capabilities,
        on_attach = on_attach,
      }))

      vim.diagnostic.config({
        virtual_text = {
          source = "always",
        },
        float = {
          source = "always",
        },
      })
    end,
  },

  {
    "mfussenegger/nvim-jdtls",
  },
}
