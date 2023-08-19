local M = {
  "echasnovski/mini.surround",
  event = "VeryLazy",
  version = "*"
}

function M.config()
  require("mini.surround").setup()
end

return M
