require('todo-comments').setup()

vim.keymap.set("n", "<leader>td", ":TodoTelescope<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tt", ":TodoTrouble<CR>", { noremap = true, silent = true })
