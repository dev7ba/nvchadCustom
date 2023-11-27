vim.g.dap_virtual_text = true

vim.cmd('set rnu!') --set relative numbers
vim.api.nvim_set_keymap('i','<C-s>',"<esc>:w<CR>:echo 'File saved!'<CR>",{noremap = true,silent = false});
-- vim.api.nvim_set_keymap('n','<C-s>',"<esc>:w<CR>:echo 'File saved!'<CR>",{noremap = true,silent = false});--already in nvChad
vim.api.nvim_set_keymap('n','<C-q>',":bd<CR>:echo 'File exited!'<CR>",{noremap = true,silent = false});
vim.api.nvim_set_keymap('i','<C-q>',"<esc>:bd<CR>:echo 'File exited!'<CR>",{noremap = true,silent = false});
vim.api.nvim_set_keymap('n','<C-x>',":q<CR>:echo 'File exited!'<CR>",{noremap = true,silent = false});
vim.api.nvim_set_keymap('i','<C-x>',"<esc>:q<CR>:echo 'File exited!'<CR>",{noremap = true,silent = false});
vim.api.nvim_set_keymap('n','<C-e>',":e!<CR>:echo 'File reloaded!'<CR>",{noremap = true,silent = false});
-- vim.api.nvim_set_keymap('i','<C-e>',"<esc>:e!<CR>:echo 'File reloaded!'<CR>",{noremap = true,silent = false});--used in nvchad for go to end line while insert mode
