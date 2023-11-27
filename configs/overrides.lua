local M = {}

--Modifies nvimtree default keys
local function my_on_attach(bufnr)
    local api = require('nvim-tree.api')

    local function opts(desc)
      return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    api.config.mappings.default_on_attach(bufnr)
    -- your removals and mappings go here
    vim.keymap.set('n', 't', api.node.open.edit, opts('Open with t key'))
end

--Modifies nvimtree defaults
M.nvimtree = {
  on_attach=my_on_attach,
  actions = {
    open_file = {
      quit_on_open= true,
    },
  },
}

return M
