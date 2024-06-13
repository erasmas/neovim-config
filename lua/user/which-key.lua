local M = {
  "folke/which-key.nvim",
  version = false,
  event = "VeryLazy",
}

function M.config()
  require("which-key").setup({})
  local wk = require("which-key")
  wk.register({
    p = {
      name = "Pick",
      f = { function() require('mini.pick').start({ source = { items = vim.fn.readdir('.') } }) end, "Pick from files in current directory" },
      g = { function() require('mini.pick').builtin.files({ tool = 'git' }) end, "Pick from git files" },
    },
  }, { prefix = "<leader>" })
end

return M
