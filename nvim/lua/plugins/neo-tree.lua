return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.filesystem.hijack_netrw_behavior = "open_default"
    opts.filesystem.filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = false,
    }
    opts.window.position = "left"
    opts.window.width = 40
  end,
}
