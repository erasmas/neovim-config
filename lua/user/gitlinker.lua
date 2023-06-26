local M = {
  "ruifm/gitlinker.nvim",
  commit = "cc59f732f3d043b626c8702cb725c82e54d35c25",
  dependencies = { 'nvim-lua/plenary.nvim' },
  event = "BufReadPre",
}

function M.config()
  -- https://github.com/ruifm/gitlinker.nvim#configuration
  require('gitlinker').setup()
end

return M
