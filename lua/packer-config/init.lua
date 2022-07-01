return require'packer'.startup(function()
	use 'wbthomason/packer.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'EdenEast/nightfox.nvim' -- Packer
	use 'kyazdani42/nvim-tree.lua'
    use 'nvim-lualine/lualine.nvim'

	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'nvim-treesitter/nvim-treesitter-refactor'
	use 'windwp/nvim-ts-autotag'
    
	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'

    use 'hrsh7th/vim-vsnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'onsails/lspkind.nvim'

	use('jose-elias-alvarez/null-ls.nvim')
    
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'lukas-reineke/indent-blankline.nvim'
    -- use 'romgrk/barbar.nvim'
    use {'akinsho/bufferline.nvim', tag = "v2.*" }
    use { "akinsho/toggleterm.nvim", tag = 'v1.*' }
    use 'ojroques/nvim-bufdel'

    use 'numToStr/Comment.nvim'
    use 'JoosepAlviste/nvim-ts-context-commentstring'

    -- Git
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    use 'rcarriga/nvim-notify'

    use { 'folke/todo-comments.nvim',
        config = function()
            require 'todo-comments'.setup {}
        end
    }
    -- Telescope
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- Copilot
    use 'github/copilot.vim'
end)
