return {
  ["github/copilot.vim"] = {},
  ["junegunn/fzf"] = {},
  ["junegunn/fzf.vim"] = {},
  ["nvim-telescope/telescope-fzf-native.nvim"] = {
    run = "make"
  },
  ["nvim-telescope/telescope-project.nvim"] = {},
  ["sudormrfbin/cheatsheet.nvim"] = {
    requires = {
      {'nvim-telescope/telescope.nvim'},
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
    }
  },
  ["Pocco81/true-zen.nvim"] = {
    config = function()
      require("true-zen").setup{

      }
    end
  },
  ["glepnir/dashboard-nvim"] = {
    config = function()
      local db = require('dashboard')
      db.session_directory = "~/.nvimsessions"
      db.session_auto_save_on_exit = true
      db.custom_center = {
        {
          desc = "Restore latest session",
          shortcurt = "SPC s l",
          action = function()
            vim.cmd('SessionLoad')
            vim.cmd('NvimTreeOpen')
          end
        }
      }
    end
  },
  ["kyazdani42/nvim-tree.lua"] = {
    cmd = {"NvimTreeOpen", "NvimTreeClose", "NvimTreeToggle", "NvimTreeFocus", "NvimTreeRefresh", "NvimTreeClipboard", "NvimTreeFindFile", "NvimTreeFindFileToggle", "NvimTreeResize", "NvimTreeCollapse", "NvimTreeCollapseKeepBuffers"},
    override_options = function()
      return {
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
