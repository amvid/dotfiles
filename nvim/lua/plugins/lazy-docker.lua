---@type LazySpec
return {
  {
    "mgierada/lazydocker.nvim",
    lazy = true,
    dependencies = {
      "akinsho/toggleterm.nvim",
      {
        "AstroNvim/astrocore",
        opts = function(_, opts)
          local maps = opts.mappings

          local prefix = "<Leader>g"

          maps.n[prefix .. "D"] = {
            function() require("lazydocker").open() end,
            desc = "ToggleTerm LazyDocker",
          }
        end,
      },
    },
  },
}
