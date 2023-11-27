local M = {
  "ray-x/go.nvim",
  commit = "ad5db6a907160e0d78671acf93d0ebfccd2fae30",
  event = "BufReadPre",
  dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
  },
}

function M.config()
  require("go").setup {}
end

return M
