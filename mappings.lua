local M = {}
M.disabled ={
  n={
    -- new
    ["<leader>h"] = "",
    ["<leader>v"] = "",
    ["<C-x>"] = { "<cmd> :qa! <CR>", "Quit all" },
  },
  -- i={
    --new
    -- ["<C-s>"] = { "<ESC><cmd> w <CR>", "Save file" },
    -- ["<C-s>"] = { "<ESC>^i", "Beginning of line" },
    -- ["<C-s>"] = { "<cmd> w <CR>", "Save file" },
    -- ["<C-s>"] = { "<cmd> noh <CR>", "Clear highlights" },
  -- },
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
