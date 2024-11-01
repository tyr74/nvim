return {
  {
    "nvim-treesitter/nvim-treesitter",
    'nvim-treesitter/nvim-treesitter-context',
    'windwp/nvim-ts-autotag',
    'nvim-treesitter/nvim-treesitter-refactor',
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { 
          "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "asm", "cpp", 
          "css", "csv", "go", "htmldjango", "java", "make", "matlab", "nasm", "objdump", "python", "rust" 
        },
        sync_install = false,
        auto_install = true,
        highlight = { 
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
        refactor = {
          smart_rename = {
            enable = true,
            -- Assign keymaps to false to disable them, e.g. `smart_rename = false`.
            keymaps = {
              smart_rename = "grr",
            },
          },
          navigation = {
            enable = true,
            -- Assign keymaps to false to disable them, e.g. `goto_definition = false`.
            keymaps = {
              goto_definition = "gnd",
              list_definitions = "gnD",
              list_definitions_toc = "gO",
              goto_next_usage = "<a-*>",
              goto_previous_usage = "<a-#>",
            },
          },
        },
      })
      
    end,
  },
}
