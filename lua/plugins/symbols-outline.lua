return {
  "simrat39/symbols-outline.nvim",
  keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
  cmd = "SymbolsOutline",
  opts = function()
    local Config = require("lazyvim.config")
    local defaults = require("symbols-outline.config").defaults
    local opts = {
      symbols = {},
      symbol_blacklist = {},
    }

    for kind, symbol in pairs(defaults.symbols) do
      opts.symbols[kind] = {
        icon = Config.icons.kinds[kind] or symbol.icon,
        hl = symbol.hl,
      }
    end
    return opts
  end,
}