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
  use('nvim-telescope/telescope-ui-select.nvim')
  use('nvim-telescope/telescope-live-grep-args.nvim')
  use('Shatur/neovim-session-manager')
  -- fzf
  use { "ibhagwan/fzf-lua",
    -- optional for icon support
    requires = { "nvim-tree/nvim-web-devicons" }
  }
  -- use('airblade/vim-rooter')
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } } -- A better statusline
  -- use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  -- File management --
  use('nvim-tree/nvim-tree.lua')
  -- use('ryanoasis/vim-devicons')

  -- Tim Pope Plugins --
  use('tpope/vim-surround')
  -- Syntax Highlighting and Colors --
  use('sheerun/vim-polyglot')
  -- use('neoclide/vim-jsx-improve')
  -- use('maxmellon/vim-jsx-pretty')
  use('ap/vim-css-color')
  -- use('groenewege/vim-less')
  use('leafgarland/typescript-vim')
  -- use('peitalin/vim-jsx-typescript')
  -- Colorschemes -
  use('navarasu/onedark.nvim')
  use('projekt0n/github-nvim-theme')
  -- hop --
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }
  -- Treesittetr
  --use {
    --"nvim-treesitter/nvim-treesitter",
    --run = ":TSUpdate"
  --}
  use('akinsho/toggleterm.nvim')
  use('neoclide/coc.nvim')
  use('tpope/vim-fugitive')
  use('airblade/vim-gitgutter')
  use('nvim-lua/plenary.nvim')
  use('lewis6991/gitsigns.nvim')
  use('preservim/nerdcommenter')
  use('yggdroot/indentline')
  use('rafi/awesome-vim-colorschemes')
  use('xiyaowong/nvim-transparent')
  use('christoomey/vim-tmux-navigator')
  use('SirVer/ultisnips')
  use('honza/vim-snippets')
  use('mileszs/ack.vim')
  use('fedepujol/move.nvim')
  use('github/copilot.vim')
  use('sindrets/diffview.nvim')
  use {
    'akinsho/git-conflict.nvim',
    config = function()
      require('git-conflict').setup()
    end
  }
  use { 'itchyny/vim-cursorword' }
  use('dstein64/vim-startuptime')
  use({ 
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function() 
      vim.g.mkdp_filetypes = { "markdown" } 
    end,
    ft = { "markdown" }
  })

  if packer_bootstrap then
    packer.sync()
  end
end)
