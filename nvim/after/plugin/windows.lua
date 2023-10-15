local function cmd(command)
   return table.concat({ '<Cmd>', command, '<CR>' })
end

vim.keymap.set("n", "<leader>ww", cmd "WindowsMaximize")
vim.keymap.set("n", "<leader>mi", cmd "WindowsMaximizeVertically")
vim.keymap.set("n", "<leader>kj", cmd "WindowsMaximizeHorizontally")
vim.keymap.set("n", "<leader>=", cmd "WindowsEqualize")
vim.keymap.set("n", "<leader><Right>", "<C-w><Right>")
vim.keymap.set("n", "<leader>nh", function()
    vim.cmd.vnew()
    local builtin = require('telescope.builtin')
    builtin.find_files()
    --builtin.find_files
end)
vim.keymap.set("n", "<leader><Up>", "<C-w><Up>")
vim.keymap.set("n", "<leader><Down>", "<C-w><Down>")
vim.keymap.set("n", "<leader><Left>", "<C-w><Left>")
