local M = {
  "folke/which-key.nvim",
  version = false,
  event = "VeryLazy",
}

function M.config()
  require("which-key").setup({})
  local wk = require("which-key")
  wk.add({
      { "<leader>p", group = "Pick" },
      { "<leader>pf",
        function()
          require('mini.pick').start({ source = { items = vim.fn.readdir('.') } })
        end,
        desc = "Pick from files in current directory"
      },
      { "<leader>pg",
        function()
          require('mini.pick').builtin.files({ tool = 'git' })
        end,
        desc = "Pick from git files"
      },
  })
end

return M
