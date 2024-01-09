local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- color scheme
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
    },

    -- telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        run = ":TSUpdate"
    },

    -- harpoon
    {
        'ThePrimeagen/harpoon',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- undotree
    {
        'mbbill/undotree'
    },

    -- vim fugitive
    {
        'tpope/vim-fugitive'
    },

    -- lsp
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x'
    },
    {
        'neovim/nvim-lspconfig'
    },
    {
        'hrsh7th/cmp-nvim-lsp'
    },
    {
        'hrsh7th/nvim-cmp'
    },
    {
        'L3MON4D3/LuaSnip'
    },
    {
        "williamboman/mason.nvim"
    },
    {
        "williamboman/mason-lspconfig.nvim"
    },
    {
        "neovim/nvim-lspconfig"
    },

    -- neo tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim",              -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },

    -- lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    -- copilot
    {
        'github/copilot.vim'
    },

    -- vim tmux
    {
        'christoomey/vim-tmux-navigator',
        lazy = false,
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        },
        keys = {
            { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
        },
    },
})
