require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "eslint",
  -- "ts_ls" --,
  "hls",
}
-- vim.lsp.enable(servers)
local lspconfig = require "lspconfig"
for _, server in ipairs(servers) do
  lspconfig[server].setup {}
end
-- -- read :h vim.lsp.config for changing options of lsp servers

-- TypeScript / JavaScript
local lspconfig = require "lspconfig"

-- TypeScript / JavaScript
lspconfig.ts_ls.setup {
  init_options = {
    hostInfo = "neovim",
  },
  settings = {
    typescript = {
      inlayHints = { includeInlayParameterNameHints = "all" },
    },
    javascript = {
      format = {
        enable = false,
      },
      validate = true,
      suggest = {
        enabled = true,
      },
    },
  },
  -- Override root_dir to fallback to current dir if no config found
  root_dir = function(fname)
    local util = lspconfig.util
    local root = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json")(fname)
    if root then
      return root
    else
      -- fallback to current working directory so ts_ls can start
      return vim.loop.cwd()
    end
  end,
}
