return {
  ["github/copilot.vim"] = {},
  ["glepnir/dashboard-nvim"] = {
    config = function()
      local db = require('dashboard')
      db.session_directory = "~/.nvimsessions"
      db.session_auto_save_on_exit = true
      db.custom_center = {
        {
          desc = "SessionLoad",
          shortcurt = "SPC s l",
          action = "SessionLoad"
        }
      }
    end
  },
  ["kyazdani42/nvim-tree.lua"] = {
    override_options = function()
      return {
        open_on_setup = true,
        diagnostics = {
          enable = true,
          show_on_dirs = true,
        },
        view = {
          adaptive_size = false,
          preserve_window_proportions = true
        },
        git = {
          enable = true,
          ignore = false,
          timeout = 500
        },
        renderer = {
          highlight_git = true,
          highlight_modified = "none",
          icons = {
            show = {
              git = true,
              modified = true
            }
          }
        }
      }
    end
  },
  ["neoclide/coc.nvim"] = {
    branch = "release"
  },
  ["yardnsm/vim-import-cost"] = {
    run = "npm install --production"
  },
  ["iamcco/markdown-preview.nvim"] = {
    run = function() vim.fn["mkdp#util#install"]() end,
    config = function() vim.g.mkdp_auto_close = 0 end
  },
  ["neovim/nvim-lspconfig"] = false,
}
