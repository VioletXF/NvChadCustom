return {

  {
    "zbirenbaum/copilot.lua",
    lazy = false,
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        suggestion = { enabled = false, auto_trigger = true },
        panel = {
          enabled = true,
          keymap = {
            jump_prev = "<S-Tab>",
            jump_next = "<Tab>",
          },
        },
      }
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    lazy = false,
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup {
        method = "getPanelCompletions",
        formatters = {
          label = require("copilot_cmp.format").format_label_text,
          insert_text = require("copilot_cmp.format").format_insert_text,
          preview = require("copilot_cmp.format").deindent,
        },
      }
    end,
  },
  { "nvim-telescope/telescope-fzf-native.nvim", lazy = false, build = "make" },
  { "nvim-telescope/telescope-project.nvim", lazy = false },
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require "plugins.configs.mason"
      require("mason-lspconfig").setup {}
    end,
  },
  {
    "folke/trouble.nvim",
    lazy = false,

    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        position = "top",
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },
  { "folke/lsp-colors.nvim", lazy = false },
  { "williamboman/mason-lspconfig.nvim", lazy = false },
  {
    "jose-elias-alvarez/null-ls.nvim",
    lazy = false,

    after = "nvim-lspconfig",
    config = function()
      require "custom.configs.null-ls"
    end,
  },
  {
    "lewis6991/hover.nvim",
    lazy = false,

    config = function()
      require "custom.configs.hover"
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,

    opts = function()
      return require "custom.configs.gitsigns"
    end,
  },
  {
    "sudormrfbin/cheatsheet.nvim",
    lazy = false,

    dependencies = {
      { "nvim-telescope/telescope.nvim" },
      { "nvim-lua/popup.nvim" },
      { "nvim-lua/plenary.nvim" },
    },
  },
  {
    "Pocco81/true-zen.nvim",
    lazy = false,

    config = function()
      require("true-zen").setup {}
    end,
  },
  {
    "Shatur/neovim-session-manager",
    lazy = false,

    dependencies = {
      { "nvim-lua/plenary.nvim" },
    },
    config = function()
      require("session_manager").setup {
        autoload_mode = require("session_manager.config").AutoloadMode.CurrentDir,
      }
    end,
  },

  {
    "NvChad/nvterm",
    lazy = false,

    opts = function()
      return require "custom.configs.nvterm"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,

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
    opts = function()
      return {
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
        actions = {
          open_file = {
            resize_window = false,
          },
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
  { "lbrayner/vim-rzip", lazy = false },
  {
    "hrsh7th/nvim-cmp",
    lazy = false,

    opts = function()
      require "custom.configs.cmp"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  { "yardnsm/vim-import-cost", lazy = false, build = "npm install --production" },
  {
    "iamcco/markdown-preview.nvim",
    lazy = false,

    ft = { "markdown" },
    build = "cd app && yarn install",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,

    opts = function()
      return require "custom.configs.treesitter"
    end,
  },
  {
    "ibhagwan/fzf-lua",
    lazy = false,

    after = "nvim-web-devicons",
    config = function()
      require "custom.configs.fzf-lua"
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    lazy = false,

    cmd = "Telescope",
    config = function()
      require "plugins.configs.telescope"
    end,
  },
  {
    "jackMort/ChatGPT.nvim",
    lazy = false,

    after = "nvim-lspconfig",
    config = function()
      require("chatgpt").setup {}
    end,
    dependencies = {
      { "MunifTanjim/nui.nvim" },
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim" },
    },
  },
}
