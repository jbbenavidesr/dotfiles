-- Open File Explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = '[P]roject [V]iew of the files in the explorer.' })

-- Easier Esc from insert mode
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Escape insert mode with jk.' })

-- Move highlighted text
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move highlighted lines up.' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move highlighted lines down.' })

-- Update some movements to make them keep the cursor in the center of the screen.
vim.keymap.set('n', 'J', 'mzJ`z', { desc = '[J]oin next line with current and keep cursor in place.' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll [D]own and keep cursor in the center.' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll [U]p and cursor in the center.' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Keep cursor in the center while navigating to next search match.' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Keep cursor in the center while navigating to previous search match.' })

-- Yank behavior
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = '[Y]ank into system clipboard' })

-- Some custom utility commands
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>', { desc = 'Run tmux-sessionizer to open other project' })
vim.keymap.set(
  'n',
  '<leader>s',
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = 'Find and replace current word under cursor in the whole file.' }
)
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true }, { desc = 'Give executable permissions to current file.' })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear highlights on search' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Move between windows
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to down window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to up window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })

-- Move windows
vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

print("hello world")
