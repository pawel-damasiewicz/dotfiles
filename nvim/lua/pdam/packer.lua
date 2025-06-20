-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    use {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        -- or                            , branch = "0.1.x",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    use "tpope/vim-fugitive"
    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        requires = {
            -- LSP Support
            {"neovim/nvim-lspconfig"},                   -- Required
            {"williamboman/mason.nvim", run = function() -- Optional
                vim.cmd("MasonUpdate")
            end},
            {"williamboman/mason-lspconfig.nvim"},       -- Optional

            -- Autocompletion
            {"hrsh7th/nvim-cmp"},     -- Required
            {"hrsh7th/cmp-nvim-lsp"}, -- Required
            {"L3MON4D3/LuaSnip"}     -- Required
        }
    }
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true }
    }
    use "mfussenegger/nvim-dap"
    use "rcarriga/nvim-dap-ui"
    use "folke/zen-mode.nvim"
    use "jose-elias-alvarez/null-ls.nvim"
    use "MunifTanjim/prettier.nvim"
    use "xiyaowong/transparent.nvim"
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
end)
