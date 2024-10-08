return {
  'stevearc/oil.nvim',
  lazy = true,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    delete_to_trash = true,
    skip_confirm_for_simple_edits = true,
    watch_for_changes = false,
    view_options = {
      show_hidden = true,
    },
    keymaps = {
      ['gw'] = {
        function()
          require('oil').save(nil, nil)
        end,
        desc = 'Save Oil Buffer',
      },
      ['<leader>sF'] = {
        function()
          require('telescope.builtin').find_files {
            cwd = require('oil').get_current_dir(),
          }
        end,
        mode = 'n',
        nowait = true,
        desc = 'Find files in the current oil directory',
      },
      ['<C-k>'] = 'actions.select',
    },
  },
  -- config = function ()
  --   require("oil").setup()
  -- end,
  keys = {
    { '-', '<cmd>Oil<cr>', desc = 'Open parent directory' },
    {
      '_',
      function()
        require('oil').toggle_float()
      end,
      desc = 'Open floating parent direc',
    },
  },
}
