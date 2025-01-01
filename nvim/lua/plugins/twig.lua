return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "twig" })
      end
      opts.highlight = {
        enable = true,
      }
      opts.indent = {
        enable = true,
      }
    end,
  },
  {
    "lumiliet/vim-twig",
  },
}
