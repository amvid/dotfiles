return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "php" })
      end
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "intelephense" })
      opts.setup = require("lspconfig").intelephense.setup {
        settings = {
          intelephense = {
            formatting = {
              indentSize = 2,
              tabSize = 2,
            },
          },
        },
      }
    end,
  },
}
