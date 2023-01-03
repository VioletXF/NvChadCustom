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
  ["Shatur/neovim-session-manager"] = {
    requires = {
      {'nvim-lua/plenary.nvim'}
    },
    config = function()
      require("session_manager").setup({
        autoload_mode = require("session_manager.config").AutoloadMode.CurrentDir,
      })
    end
  },
  ["goolord/alpha-nvim"] = {
    disable = false
  },
  ["glepnir/dashboard-nvim"] = {
    disable = true,
    config = function()
      local db = require('dashboard')
      db.session_directory = "~/.nvimsessions"
      db.session_auto_save_on_exit = true
      db.custom_center = {
        {
          desc = "SessionLoad",
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
    ft = { "markdown" },
    run = "cd app && yarn install",
  },
  ["neovim/nvim-lspconfig"] = false,
}
