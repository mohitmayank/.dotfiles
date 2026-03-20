---@type LazySpec
return {
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      local status = require "astroui.status"

      -- Remove the winbar (breadcrumb bar below tabs)
      opts.winbar = nil

      -- Custom statuscolumn: absolute line number left, relative number right
      opts.statuscolumn = {
        init = function(self) self.bufnr = vim.api.nvim_get_current_buf() end,
        status.component.foldcolumn(),
        {
          provider = function()
            return string.format(" %d ", vim.v.lnum)
          end,
          hl = function()
            return vim.v.relnum == 0 and "CursorLineNr" or "LineNr"
          end,
        },
        status.component.signcolumn(),
      }

      return opts
    end,
  },
}
