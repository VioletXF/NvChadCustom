return {

  ["nvim-tree/nvim-web-devicons"] = {
    after = false,
    config = function() end,
  },
  ["zbirenbaum/copilot.lua"] = {
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
  ["zbirenbaum/copilot-cmp"] = {
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
  ["folke/trouble.nvim"] = {
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        position = "top",
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },
  ["folke/lsp-colors.nvim"] = {},
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
  ["NvChad/nvterm"] = {
    override_options = function()
      return require "custom.configs.nvterm"
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
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = function()
      return require "custom.configs.treesitter"
    end,
  },
  ["ibhagwan/fzf-lua"] = {
    after = "nvim-web-devicons",
    config = function()
      require "custom.configs.fzf-lua"
    end,
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
