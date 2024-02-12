-- Lazy Packer Installation
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

-- List of plugins
local plugins = {
    -- Fuzzy Finding
    { 'nvim-telescope/telescope-fzf-native.nvim', build = "make" },
    { 'nvim-treesitter/nvim-treesitter',          build = ":TSUpdate" },
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    "p00f/nvim-ts-rainbow",
    {"ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }},

    -- Utility
    "folke/which-key.nvim",

    -- nvim tree
    'mbbill/undotree',
    "nvim-tree/nvim-tree.lua",
    'nvim-tree/nvim-web-devicons',

    -- Aesthetics
    'itchyny/lightline.vim',
    'lukas-reineke/virt-column.nvim',
    'windwp/nvim-autopairs',
    'rcarriga/nvim-notify',
    "catppuccin/nvim",

    -- CMP plugins
    "hrsh7th/nvim-cmp",    -- The completion plugin
    "hrsh7th/cmp-buffer",  -- buffer completions
    "hrsh7th/cmp-path",    -- path completions
    "hrsh7th/cmp-cmdline", -- cmdline completions
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lsp",
    "rafamadriz/friendly-snippets",

    -- snippet completions
    'L3MON4D3/LuaSnip',

    -- lsp
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },

    -- Code Runner
    { "CRAG666/code_runner.nvim", config = true },

    -- autosave 
    'Pocco81/auto-save.nvim', 

    -- Need to research how to properly  more
    -- USED FOR GIT
    'tpope/vim-fugitive',

    -- Not yet in a category
    "jbyuki/venn.nvim", -- draw diagrams with ascii chars
}

-- List of options
local opts = {}

require("lazy").setup(plugins, opts)
-- End of Lazy Packer Installation
