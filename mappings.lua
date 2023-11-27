local M ={}
M.disabled ={
  n={
    -- new
    ["<leader>h"] = "",
    ["<leader>v"] = "",
    ["<C-x>"] = { "<cmd> :qa! <CR>", "Quit all" },
  },
}
M.general = {
 n={
    [","] = {
      function ()
        local current_window = vim.fn.win_getid()
        require('leap').leap { target_windows = { current_window } }
      end,
      "Easy Jump key",
    },
  },
}
M.terminal ={
  n={
    -- new
    ["<leader>ht"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "New horizontal term",
    },
    -- new
    ["<leader>vt"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "New vertical term",
    },
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

return M
