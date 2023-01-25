------------------------------------------------
-- DT'S NEOVIM CONFIGURATION
-- Neovim website: https://neovim.io/
-- DT's dotfiles: https://gitlab.com/dwt1/dotfiles
-------------------------------------------------

local status, packer = pcall(require, 'packer')
if not status then
	print('Packer is not installed')
	return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
    augroup packer_user_config
      autocmd!
     autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup END
]])

packer.startup(function(use)
	-- Packer can manage itself
	use('wbthomason/packer.nvim')
	-- Telescope
	use({
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim' } },
	})
	use('nvim-telescope/telescope-file-browser.nvim')
	use('airblade/vim-rooter')
	--use('nvim-treesitter/nvim-treesitter') -- Treesitter Syntax Highlighting
	--use('folke/which-key.nvim') -- Which Key
	use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } } -- A better statusline
	-- File management --
	use('scrooloose/nerdtree')
	--use("tiagofumo/vim-nerdtree-syntax-highlight")
	--use("ryanoasis/vim-devicons")

	-- Tim Pope Plugins --
	use('tpope/vim-surround')
	-- Syntax Highlighting and Colors --
	use('ap/vim-css-color')
	use('leafgarland/typescript-vim')
	-- Colorschemes -
	use('navarasu/onedark.nvim')
	-- hop --
	use {
		'phaazon/hop.nvim',
		branch = 'v2', -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
		end
	}
	use('akinsho/toggleterm.nvim')
	--use('neoclide/coc.nvim')
	use('jiangmiao/auto-pairs')
	use('sheerun/vim-polyglot')
	use('tpope/vim-fugitive')
	use('airblade/vim-gitgutter')
	use('nvim-lua/plenary.nvim')
	use('lewis6991/gitsigns.nvim')
	use('preservim/nerdcommenter')
	use('leafOfTree/vim-matchtag')
	use('yggdroot/indentline')
	use('rafi/awesome-vim-colorschemes')
	use('xolox/vim-misc')
	use('xolox/vim-session')
	use('xiyaowong/nvim-transparent')
	-- LSP
	use { 'williamboman/mason.nvim' }
	-- Lspconfig
	use({ 'neovim/nvim-lspconfig' })
	-- 补全引擎
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-buffer') -- { name = 'buffer' },
	use('hrsh7th/cmp-path') -- { name = 'path' }
	use('hrsh7th/cmp-cmdline') -- { name = 'cmdline' }
	use('hrsh7th/cmp-nvim-lsp-signature-help') -- { name = 'nvim_lsp_signature_help' }
	use('hrsh7th/cmp-nvim-lsp')
	-- Snippet
	use('SirVer/ultisnips')
	use('honza/vim-snippets')
	use('quangnguyen30192/cmp-nvim-ultisnips')

	use('hrsh7th/cmp-vsnip')
	use('hrsh7th/vim-vsnip')
	--use { 'tzachar/cmp-tabnine', run = './install.sh', requires = 'hrsh7th/nvim-cmp' }

	use('christoomey/vim-tmux-navigator')

	--use('mattn/emmet-vim')

	use('kdheepak/lazygit.nvim')

	--use { 'echasnovski/mini.nvim', branch = 'stable' }
	use("sbdchd/neoformat")

	if packer_bootstrap then
		packer.sync()
	end
end)
