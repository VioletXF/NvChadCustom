local M = {}

M.general = {
  i = {},
  n = {
    ["gr"] = {
      "<cmd>TroubleToggle lsp_references<cr>",
    },
    ["<leader>xx"] = { "<cmd>TroubleToggle<cr>" },
    ["<C-p>"] = {
      "<cmd> lua require('fzf-lua').files()<cr>",
    },
    ["<leader>o"] = {
      "<cmd> lua require('fzf-lua').oldfiles()<cr>",
    },
    ["<C-g>"] = {
      "<cmd> lua require('fzf-lua').live_grep_resume()<cr>",
    },
    ["<C-;>"] = {
      "<cmd> lua require('fzf-lua').buffers()<cr>",
    },
  },
  v = {},
  x = {},
  t = {},
  s = {
    ["<Tab>"] = {
      "<cmd>lua require'luasnip'.jump(1)<cr>",
    },
    ["<S-Tab>"] = {
      "<cmd>lua require'luasnip'.jump(-1)<cr>",
    },
  },
}
M.terminal = {
  n = {
    ["<C-c>"] = {
      "<C-c>", -- override NvChad's default config
    },
  },
  t = {
    -- on mouse mode scroll up, <Up>
    ["<ScrollWheelUp>"] = {
      "<Up>",
    },
    -- on mouse mode scroll down, <Down>
    ["<ScrollWheelDown>"] = {
      "<Down>",
    },
    ["<ESC>"] = {
      "<ESC>", -- override NvChad's default config
    },
  },
}
return M
