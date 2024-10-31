-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
-- Add lazy to the `runtimepath`, this allows us to `require` it
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "rose-pine" } },
  -- automatically check for plugin updates
  checker = {
    -- automatically check for plugin updates
    enabled = false,
    ---@type number? set to 1 to check for updates very slowly
    concurrency = 1,
    -- get a notification when new updates are found
    notify = false,
    -- in seconds, check once a day
    frequency = 86400,
    -- check for pinned packages that can't be updated
    check_pinned = false,
  },
  change_detection = {
    -- automatically check for config file changes and reload the ui
    enabled = false,
    -- get a notification when changes are found
    notify = false,
  },
})
