return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "tpope/vim-surround",
    event = "BufReadPost",
  },

  {
    "mattn/emmet-vim",
    ft = { "html", "css", "javascript", "typescript", "jsx", "javascriptreact", "tsx", "typescriptreact" }, -- optional lazy load
  },

  -- {
  --   "mg979/vim-visual-multi",
  --   event = "BufReadPost",
  --   init = function()
  --     vim.g.VM_default_mappings = 0
  --   end,
  -- },
  --

  --   -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
      },
    },
  },

  {
    "windwp/nvim-ts-autotag",
    ft = { "html", "javascriptreact", "typescriptreact", "jsx", "tsx", "javascript", "typescript" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip").filetype_extend("javascriptreact", { "html" })
      require("luasnip").filetype_extend("typescriptreact", { "html" })
    end,
  },
}
