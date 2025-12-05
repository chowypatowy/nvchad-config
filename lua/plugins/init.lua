return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require "configs.lspconfig"
  --   end,
  -- },

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
  -- { import = "nvchad.blink.lazyspec" },

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
  -- autocomplete

  {
    "hrsh7th/nvim-cmp",
    opts = {
      enabled = function()
        return (vim.bo.ft ~= "tex")
      end,
    },
  },
  {
    "FelipeLema/cmp-async-path",
    enabled = false,
  },
  {
    "hrsh7th/cmp-path",
  },
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load { exclude = { "tex", "text" } }

      require("luasnip").filetype_extend("javascriptreact", { "html" })
      require("luasnip").filetype_extend("typescriptreact", { "html" })
    end,
  },
  -- {
  --   "github/copilot.vim",
  --   lazy = false,
  --   config = function()
  --     vim.g.copilot_no_tab_map = true
  --     vim.g.copilot_assume_mapped = true
  --     -- Only enable Copilot if not a LaTeX file
  --     vim.cmd [[
  --   ]]
  --     vim.keymap.set(
  --       "i",
  --       "<C-c>",
  --       "copilot#Accept()",
  --       { noremap = true, expr = true, silent = true, script = true, replace_keycodes = false }
  --     )
  --     -- vim.keymap.set("i", "<C-K>", 'copilot#Accept("<Tab>")', { expr = true, silent = true, script = true })
  --   end,
  -- },
  -- {
  --   "epwalsh/obsidian.nvim",
  --   version = "*", -- recommended, use latest release instead of latest commit
  --   lazy = true,
  --   ft = "markdown",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --   },
  --   opts = {
  --     workspaces = {
  --       {
  --         name = "personal",
  --         path = "~/Documents/obsidian vault/",
  --       },
  --     },
  --
  --     -- see below for full list of options 👇
  --   },
  -- },
  -- LaTeX stuff
  {
    "lervag/vimtex",
    ft = { "tex", "plaintex", "latex" }, -- load only for LaTeX files
    config = function()
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_quickfix_mode = 0
      vim.opt.conceallevel = 1
      vim.g.tex_conceal = "abdmg"
    end,
  },
  {
    "SirVer/ultisnips",
    -- event = "InsertEnter",
    -- lazy = false,
    ft = { "tex" },
    init = function()
      vim.g.UltiSnipsExpandTrigger = "<tab>"
      vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
      vim.g.UltiSnipsJumpBackwardTrigger = "<s-tab>"
      vim.g.UltiSnipsSnippetDirectories = { "UltiSnips" }
    end,
  },
}
