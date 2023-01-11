return require("packer").startup(function(use)
    -- Packer
    use("wbthomason/packer.nvim")

    -- Theme
    use("EdenEast/nightfox.nvim")

    -- File Tree
    use("kyazdani42/nvim-web-devicons")
    use("kyazdani42/nvim-tree.lua")
    use("nvim-lualine/lualine.nvim")

    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("nvim-treesitter/nvim-treesitter-refactor")
    use("windwp/nvim-ts-autotag")

    use({ -- LSP Configuration & Plugins
        "neovim/nvim-lspconfig",
        requires = {
            -- Automatically install LSPs to stdpath for neovim
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",

            -- Useful status updates for LSP
            "j-hui/fidget.nvim",
        },
    })

    use({ -- Autocompletion
        "hrsh7th/nvim-cmp",
        requires = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip" },
    })

    use("jose-elias-alvarez/null-ls.nvim")

    use("lukas-reineke/indent-blankline.nvim")
    use({ "akinsho/bufferline.nvim", tag = "v3.*" })
    use({ "akinsho/toggleterm.nvim", tag = "*" })
    use("ojroques/nvim-bufdel")

    use("numToStr/Comment.nvim")
    use("JoosepAlviste/nvim-ts-context-commentstring")

    -- Git
    -- Git related plugins
    use("tpope/vim-fugitive")
    use("tpope/vim-rhubarb")
    use("lewis6991/gitsigns.nvim")

    use("tpope/vim-sleuth") -- Detect tabstop and shiftwidth automatically

    use("rcarriga/nvim-notify")

    use({
        "folke/todo-comments.nvim",
        config = function()
            require("todo-comments").setup({})
        end,
    })
    -- Telescope
    -- Fuzzy Finder (files, lsp, etc)
    use({ "nvim-telescope/telescope.nvim", branch = "0.1.x", requires = { "nvim-lua/plenary.nvim" } })

    -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make", cond = vim.fn.executable("make") == 1 })

    use("christoomey/vim-tmux-navigator")

    -- YAML
    use({
        "cuducos/yaml.nvim",
        ft = { "yaml" }, -- optional
        requires = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-telescope/telescope.nvim", -- optional
        },
    })

    -- Copilot
    -- use 'github/copilot.vim'
end)
