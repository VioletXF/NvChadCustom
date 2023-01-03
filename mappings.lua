local M = {}

M.general = {
   i = {

  },
  n = {

    ["gd"] = { "<Plug>(coc-definition)", "go to definition"},
    ["gy"] = { "<Plug>(coc-type-definition)", "go to type definition"},
    ["gi"] = { "<Plug>(coc-implementation)", "go to implementation"},
    ["gr"] = {"<Plug>(coc-references)", "find references"},
    ["rr"] = {"<Plug>(coc-rename)", "rename symbol"},
    ["<leader>re"] = {"<Plug>(coc-codeaction-refactor)", "refactor"},
    ["<leader>a"] = {"<Plug>(coc-codeaction-selected)", "codeaction-selected"},
    
  },
  v = {

  },
  x = {
    ["<leader>r"] = {"<Plug>(coc-codeaction-refactor-selected)", "refactor selected"},
  },
  t = {

  }
}



return M
