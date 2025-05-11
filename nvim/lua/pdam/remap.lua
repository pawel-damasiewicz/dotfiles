vim.g.mapleader = ","

vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

vim.keymap.set("v", "J", ":m \">+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m \"<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "Q:", "<nop>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lpext<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n",  "<F6>", ":lua require'dap'.step_over()<cr>")
vim.keymap.set("n",  "<F7>", ":lua require'dap'.step_into()<cr>")
vim.keymap.set("n",  "<F8>", ":lua require'dap'.step_over()<cr>")
vim.keymap.set("n",  "<F5>", ":lua require'dap'.continue()<cr>")
vim.keymap.set("n",  "<leader>b", ":lua require'dap'.toggle_breakpoint()<cr>")
