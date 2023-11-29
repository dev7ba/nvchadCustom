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
    ["<C-Left>"] = { "<C-w>h", "Window left" },
    ["<C-Right>"] = { "<C-w>l", "Window right" },
    ["<C-Down>"] = { "<C-w>j", "Window down" },
    ["<C-Up>"] = { "<C-w>k", "Window up" },
    ["<C-k>"] = { "O<Esc>j", "Open line down" },
    ["<C-j>"] = { "o<Esc>k", "Open line up" },
    ["<leader>hh"] = { "<cmd> :noh<CR>", "No highlight after searching" },
    ["<C-PageUp>"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },
    ["<C-PageDown>"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },
    ["<F2>"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
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
    ["<A-t>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
  },
  t={
    ["<A-t>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
  },
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
