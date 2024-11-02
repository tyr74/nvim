return {
  {
    "williamboman/mason.nvim",
    --'neovim/nvim-lspconfig',
    config = function()
      require('mason').setup()
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {
          'lua_ls',
          'asm_lsp',
          'clangd',
          'harper_ls',
          'gopls',
          'marksman',
          'matlab_ls',
          'pylyzer',
          'pyright',
          'rust_analyzer',
          'zls',
        },
      })
    end,
  }
}
