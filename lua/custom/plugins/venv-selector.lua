return {
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-dap',
    'mfussenegger/nvim-dap-python',
    {
      'nvim-telescope/telescope.nvim',
      branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
    },
  },
  branch = 'regexp',
  lazy = false,
  config = function()
    require('venv-selector').setup {
      search_venv_managers = true,
      search_workspace = true,
    }
  end,
  keys = {
    { '<leader>sv', '<cmd>VenvSelect<cr>' },
  },
}
