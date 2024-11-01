return {
  {
    "nvim-treesitter/nvim-treesitter",
    'nvim-treesitter/nvim-treesitter-context',
    'windwp/nvim-ts-autotag',
    'nvim-treesitter/playground',
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { 
          "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "asm", "cpp", 
          "css", "csv", "go", "htmldjango", "java", "make", "matlab", "nasm", "objdump", "python", "rust", "comment"
        },
        sync_install = false,
        auto_install = true,
        highlight = { 
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
      })
      
    end,
  },
}
