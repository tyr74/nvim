return {
  {
    "nvim-tree/nvim-web-devicons"
  },

  {
    "mbbill/undotree"
  },

  {
    'm4xshen/autoclose.nvim',
    config = function()
      require('autoclose').setup()
    end,
  },
}
