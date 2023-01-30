return {

  ["github/copilot.vim"] = {},
  ["junegunn/fzf"] = {},
  ["junegunn/fzf.vim"] = {},
  ["nvim-telescope/telescope-fzf-native.nvim"] = {
    run = "make",
  },
  ["nvim-telescope/telescope-project.nvim"] = {},
  ["williamboman/mason.nvim"] = {
    config = function()
      require "plugins.configs.mason"
      require("mason-lspconfig").setup {}
    end,
  },
  ["williamboman/mason-lspconfig.nvim"] = {},
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.configs.null-ls"
    end,
  },
  ["lewis6991/hover.nvim"] = {
    config = function()
      require "custom.configs.hover"
    end,
  },
  ["lewis6991/gitsigns.nvim"] = {
    override_options = function()
      return require "custom.configs.gitsigns"
    end,
  },
  ["sudormrfbin/cheatsheet.nvim"] = {
    requires = {
      { "nvim-telescope/telescope.nvim" },
      { "nvim-lua/popup.nvim" },
      { "nvim-lua/plenary.nvim" },
    },
  },
  ["Pocco81/true-zen.nvim"] = {
    config = function()
      require("true-zen").setup {}
    end,
  },
  ["Shatur/neovim-session-manager"] = {
    requires = {
      { "nvim-lua/plenary.nvim" },
    },
    config = function()
      require("session_manager").setup {
        autoload_mode = require("session_manager.config").AutoloadMode.CurrentDir,
      }
    end,
  },
  ["goolord/alpha-nvim"] = {
    disable = false,
    config = function()
      require "custom.configs.alpha"
    end,
  },

  ["nvim-tree/nvim-tree.lua"] = {
    cmd = {
      "NvimTreeOpen",
      "NvimTreeClose",
      "NvimTreeToggle",
      "NvimTreeFocus",
      "NvimTreeRefresh",
      "NvimTreeClipboard",
      "NvimTreeFindFile",
      "NvimTreeFindFileToggle",
      "NvimTreeResize",
      "NvimTreeCollapse",
      "NvimTreeCollapseKeepBuffers",
    },
    override_options = function()
      return {
        open_on_setup = false,
        diagnostics = {
          enable = true,
          show_on_dirs = true,
        },
        view = {
          adaptive_size = false,
          preserve_window_proportions = true,
        },
        git = {
          enable = true,
          ignore = false,
          timeout = 500,
        },
        renderer = {
          highlight_git = true,
          highlight_modified = "none",
          icons = {
            show = {
              git = true,
              modified = true,
            },
          },
        },
      }
    end,
  },
  ["lbrayner/vim-rzip"] = {},
  ["hrsh7th/nvim-cmp"] = {
    config = function()
      require "custom.configs.cmp"
    end,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  ["yardnsm/vim-import-cost"] = {
    run = "npm install --production",
  },
  ["iamcco/markdown-preview.nvim"] = {
    ft = { "markdown" },
    run = "cd app && yarn install",
  },
  ["nvim-telescope/telescope.nvim"] = {
    cmd = "Telescope",
    config = function()
      require "plugins.configs.telescope"
    end,
  },
  ["jackMort/ChatGPT.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("chatgpt").setup {}
    end,
    requires = {
      { "MunifTanjim/nui.nvim" },
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim" },
    },
  },
}
