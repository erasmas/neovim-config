local M = {
  "folke/tokyonight.nvim",
  commit = "6330395",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

M.name = "tokyonight-night"
function M.config()
  -- https://github.com/zellij-org/zellij/issues/2444#issuecomment-1575314527
  vim.schedule(function()
    vim.cmd.colorscheme("tokyonight")
    vim.api.nvim_set_option("background", "dark")
  end)
end

return M
