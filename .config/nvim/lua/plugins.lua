return require('packer').startup(function(use)

    use 'neovim/nvim-lspconfig';

    use 'hrsh7th/nvim-cmp';

    use 'hrsh7th/cmp-nvim-lsp';

    use 'saadparwaiz1/cmp_luasnip';

    use 'L3MON4D3/LuaSnip';

    use 'wbthomason/packer.nvim';

    use 'arcticicestudio/nord-vim';

    use 'kyazdani42/nvim-web-devicons';

    use 'norcalli/nvim-colorizer.lua';

    use 'andweeb/presence.nvim';

    use 'RRethy/vim-illuminate';

    use {
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    };

    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
    };

    use {
        'akinsho/nvim-bufferline.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    };

    use {
        'lukas-reineke/indent-blankline.nvim',
    };

    use {
        'folke/todo-comments.nvim',
        requires = 'nvim-lua/plenary.nvim',
    };

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    };

    use {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim'},
    };

    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
    };

    use 'akinsho/toggleterm.nvim';

    use {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
    };
end);
