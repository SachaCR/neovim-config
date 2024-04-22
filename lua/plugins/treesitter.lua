return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      -- Enable auto install to avoid declaring languages you need with ensure_installed
      -- auto_install = true,
      ensure_installed = { "lua", "javascript", "typescript", "go" },
      indent = { enable = true },
      highlight = { enable = true },
    })
  end
}
