local M = {
  "echasnovski/mini.pick",
  event = "VeryLazy",
  version = "*"
}

function M.config()
  require("mini.pick").setup()
end

return M
