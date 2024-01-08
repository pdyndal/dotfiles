local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", function()
    mark.add_file()
    ui.toggle_quick_menu()
    ui.toggle_quick_menu()
end)

vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>1", function()
    ui.nav_file(1)
end)
vim.keymap.set("n", "<leader>2", function()
    ui.nav_file(2)
end)
vim.keymap.set("n", "<leader>3", function()
    ui.nav_file(3)
end)
vim.keymap.set("n", "<leader>4", function()
    ui.nav_file(4)
end)

vim.keymap.set("n", "<C-h>", ui.nav_next)
vim.keymap.set("n", "<C-l>", ui.nav_prev)

require("harpoon").setup({
    tabline = true
})
