return {
  'rose-pine/neovim',
  priority = 1000,
  init = function()
    local rose_pine = require 'rose-pine'
    rose_pine.setup { styles = { italic = false } }

    vim.cmd.colorscheme 'rose-pine'
    vim.cmd.hi 'Comment gui=none'
  end,
}
