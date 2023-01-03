local autocmd = vim.api.nvim_create_autocmd
local nvimtreeapi = require("nvim-tree.api")
local NvimTreeEvent = nvimtreeapi.events.Event


autocmd("VimEnter", {
  callback = function()
    vim.cmd('SessionLoad')
  end
})
