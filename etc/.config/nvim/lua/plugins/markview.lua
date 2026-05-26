return {
  {
    "OXY2DEV/markview.nvim",
    ft = "markdown",
    opts = function()
      local presets = require("markview.presets")
      return {
        markdown = {
          headings = presets.headings.arrowed,
        },
      }
    end,
  },
}
