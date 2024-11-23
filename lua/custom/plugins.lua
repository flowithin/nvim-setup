return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  config = true,
  -- use opts = {} for passing setup options
  -- this is equivalent to setup({}) function
  require('lazy').setup {
    -- Other plugins

    {
      -- 'mfussenegger/nvim-dap',
      lazy = false, -- Load the plugin immediately
      config = function()
        -- Place your dap setup code here
        local dap = require 'dap'

        -- Example DAP configuration
        dap.adapters.python = {
          type = 'executable',
          command = '/usr/bin/python',
          args = { '-m', 'debugpy.adapter' },
        }

        dap.configurations.python = {
          {
            type = 'python',
            request = 'launch',
            name = 'Launch file',
            program = '${file}', -- This will launch the current file
            pythonPath = function()
              return '/usr/bin/python'
            end,
          },
        }
      end,
    },
    -- Other plugins
  },
}
