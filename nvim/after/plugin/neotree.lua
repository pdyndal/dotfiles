vim.fn.sign_define("DiagnosticSignError",
    { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn",
    { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo",
    { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint",
    { text = "󰌵", texthl = "DiagnosticSignHint" })

require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            visible = true,
        }
    },
    follow_current_file = {
        enabled = true
    },
    hijack_netrw_behavior = "open_default",
})
