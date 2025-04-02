-- harpoon.lua
--
-- Select a some frequently accessed files per session to navigate to them with as
-- few keystrokes as possible.
return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    vim.keymap.set("n", "<leader>A", function() harpoon:list():prepend() end, { desc = "[A]ppend current buffer to the beginning of harpoon list."})
    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "[a]ppend current buffer to the end of harpoon list."})
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle Harpoon Menu."})

    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Go to 1st buffer in the harpoon list."})
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Go to 2nd buffer in the harpoon list."})
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Go to 3rd buffer in the harpoon list."})
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Go to 4th buffer in the harpoon list."})
    vim.keymap.set("n", "<leader><C-1>", function() harpoon:list():replace_at(1) end, { desc = "Replace 1st buffer in harpoon list with current buffer."})
    vim.keymap.set("n", "<leader><C-2>", function() harpoon:list():replace_at(2) end, { desc = "Replace 2nd buffer in harpoon list with current buffer."})
    vim.keymap.set("n", "<leader><C-3>", function() harpoon:list():replace_at(3) end, { desc = "Replace 3rd buffer in harpoon list with current buffer."})
    vim.keymap.set("n", "<leader><C-4>", function() harpoon:list():replace_at(4) end, { desc = "Replace 4th buffer in harpoon list with current buffer."})
  end
}
