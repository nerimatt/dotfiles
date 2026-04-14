-- https://github.com/m4xshen/autoclose.nvim

local config = {
   keys = {
      ["("] = { escape = false, close = true, pair = "()", disabled_filetypes = {} },
      ["["] = { escape = false, close = true, pair = "[]", disabled_filetypes = {} },
      ["{"] = { escape = false, close = true, pair = "{}", disabled_filetypes = {} },

      [">"] = { escape = true, close = false, pair = "<>", disabled_filetypes = {} },
      [")"] = { escape = true, close = false, pair = "()", disabled_filetypes = {} },
      ["]"] = { escape = true, close = false, pair = "[]", disabled_filetypes = {} },
      ["}"] = { escape = true, close = false, pair = "{}", disabled_filetypes = {} },

      ['"'] = { escape = true, close = true, pair = '""', disabled_filetypes = {} },
      ["'"] = { escape = true, close = true, pair = "''", disabled_filetypes = {} },
      ["`"] = { escape = true, close = true, pair = "``", disabled_filetypes = {} },

      -- ["/*"] = { escape = true, close = true, pair = "*/", disabled_filetypes = {} }, -- TODO
   },
   options = {
      disabled_filetypes = { },
      disable_when_touch = false,
      pair_spaces = false,
      auto_indent = true,
   },
}

require("autoclose").setup(config)


