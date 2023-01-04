-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
    use('junegunn/fzf', { run = ':fzf#install()' })
    use('junegunn/fzf.vim')


    --*****************************************************************************
    --" use(install packages
    --*****************************************************************************
    -- use('rizzatti/dash.vim'
    --use('vim-airline/vim-airline'
    --use('vim-airline/vim-airline-themes'
    use('scrooloose/nerdtree')
    use('jistr/vim-nerdtree-tabs')
    use('tpope/vim-commentary')
    use('tpope/vim-fugitive')
    use('airblade/vim-gitgutter')
    use('vim-scripts/grep.vim')
    use('vim-scripts/CSApprox')
    use('Raimondi/delimitMate') --cerrar parentesis tags <> etc
    use('majutsushi/tagbar')
    --use('dense-analysis/ale'
    use('Yggdroot/indentLine')
    -- use('editor-bootstrap/vim-bootstrap-updater'
    use('tpope/vim-rhubarb') -- required by fugitive to :GBrowse
    -- use('tomasr/molokai'
    -- use('chiel92/vim-autoformat'

    --debugg
    use('puremourning/vimspector')
    use('szw/vim-maximizer')

    --plugins para modo focus
    use('junegunn/goyo.vim')

    use('Shougo/vimproc.vim', { run = ':gmake' })

    --" Vim-Session
    use('xolox/vim-misc')
    use('xolox/vim-session')

    --" Snippets
    use('SirVer/ultisnips')
    use('honza/vim-snippets')

    --*****************************************************************************
    --" Custom bundles
    --*****************************************************************************

    -- html
    --" HTML Bundle
    -- use('hail2u/vim-css3-syntax'
    use('gko/vim-coloresque')
    -- use('tpope/vim-haml'


    -- javascript
    --" Javascript Bundle
    use('jelera/vim-javascript-syntax')

    -- typescript react tsx
    use('ianks/vim-tsx')
    use('leafgarland/typescript-vim')


    --snippets react
    use('mxw/vim-jsx')

    -- python
    --" Python Bundle
    -- use('davidhalter/jedi-vim'
    --use('raimon49/requirements.txt.vim', { for =  'requirements'})

    -- vuejs
    -- use('posva/vim-vue'
    use('leafOfTree/vim-vue-plugin')

    -- my plugins

    --github copilot
    use('github/copilot.vim')

    -- use('joshdick/onedark.vim'

    -- colorscheme"
    use 'morhetz/gruvbox'
    -- use('folke/tokyonight.nvim', { branch = 'main' })
    -- use "EdenEast/nightfox.nvim" -- no funciona con lua que clase mierda
    -- use('dikiaap/minimalist')
    use 'sainnhe/everforest'


    use('easymotion/vim-easymotion')
    use('christoomey/vim-tmux-navigator')
    -- use('neoclide/coc.nvim', {branch =  'release'})
    use('tweekmonster/django-plus.vim')
    -- use('vim-scripts/Django-Projects')
    -- use('othree/javascript-libraries-syntax.vim')
    use('prettier/vim-prettier')
    --use('jmcantrell/vim-virtualenv')
    -- use('pangloss/vim-javascript')
    use('storyn26383/vim-vue')
    use('mileszs/ack.vim') --Plugin para buscar
    -- use('othree/html5.vim')
    -- use('cakebaker/scss-syntax.vim')
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use('terryma/vim-multiple-cursors') --Multisellector cursors
    use('tpope/vim-surround') --Trabajo con doble quotes
    --use('valloric/youcompleteme') "autocompletado que hay que configurar a full
    --use('ervandew/supertab') "autocompletado con tabulacion
    --use('codota/tabnine-vim') "tabnine
    use('alvan/vim-closetag') --autoclose tags
    use('AndrewRadev/tagalong.vim') --autochange closing tags
    use('wavded/vim-stylus') --higlight para archivos stylus
    -- use('freitass/todo.txt-vim') "todo tareas etc
    use('vimwiki/vimwiki') --vim wiki para notas organizar cosas etc
    use('mopp/sky-color-clock.vim')
    -- use('neovim/nvim-lspconfig')
    -- use('nvim-lua/completion-nvim')


    --*****************************************************************************
    --*****************************************************************************


end)
