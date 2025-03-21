-- Set the mapleader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Open File Explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "[P]roject [V]iew of the files in the explorer."})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted lines up." })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighted lines down." })

vim.keymap.set("n", "J", "mzJ`z", { desc = "[J]oin next line with current and keep cursor in place." })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll [D]own and keep cursor in the center." })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll [U]p and cursor in the center." })
vim.keymap.set("n", "n", "nzzzv", { desc = "Keep cursor in the center while navigating to next search match." })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Keep cursor in the center while navigating to previous search match." })

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "[Y]ank into system clipboard"})

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Run tmux-sessionizer to open other project" })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Find and replace current word under cursor in the whole file." })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }, { desc = "Give executable permissions to current file." })
