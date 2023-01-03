local autocmd = vim.api.nvim_create_autocmd
local config_group = vim.api.nvim_create_augroup('MyConfigGroup', {})

autocmd("VimEnter", {
  callback = function()

  end
})
autocmd('User', {
  pattern = 'SessionLoadPost',
  group = config_group,
  callback = function()
    require("nvim-tree").toggle(false, true)
  end
})
