" https://github.com/neoclide/coc-eslint/issues/81 (解决没有 eslint 的项目保存时保存问题)
" https://github.com/sheerun/vim-polyglot/issues/741
let g:vue_pre_processors = []
let g:polyglot_disabled = ['markdown', 'vue']

call plug#begin('~/.vim/plugged')
" ========= apperance here. ==========
Plug 'navarasu/onedark.nvim'
Plug 'tomasiser/vim-code-dark'
Plug 'rafi/awesome-vim-colorschemes'

" ========= programming tools here. ==========
" Plug 'neoclide/coc.nvim', {'commit': '0fd56dd25fc36606afe2290240aecb6e6ab85092'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim', {'for': ['html', 'javascript.jsx']}
Plug 'preservim/nerdcommenter'
Plug 'github/copilot.vim'
Plug 'ap/vim-css-color', {'for': ['css', 'less']}
" Plug 'groenewege/vim-less'

" ========= syntax support here. ==========
Plug 'peitalin/vim-jsx-typescript', {'for': ['javascript.jsx', 'javascript.tsx']}
Plug 'leafgarland/typescript-vim', {'for': ['typescript']}
Plug 'sheerun/vim-polyglot'

" ========= useful tools here. ==========
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-live-grep-args.nvim'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'phaazon/hop.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'xiyaowong/nvim-cursorword', { 'commit': '338d4f7de49ef654caf45beb86733a786943f933' }
Plug 'dstein64/vim-startuptime'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'eliba2/vim-node-inspect'
Plug 'yggdroot/indentline'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'sindrets/diffview.nvim'
Plug 'akinsho/git-conflict.nvim'
Plug 'folke/todo-comments.nvim'

call plug#end()

let mapleader = " "
" Fast saving
nmap <leader>w :wa<cr>
nmap <C-s> :wa<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=1
set softtabstop=2
set shiftwidth=2
set mouse=a
set nu
set relativenumber
set noeol
set cursorline
set foldlevelstart=99
set foldlevel=99
set hidden
" Sets how many lines of history VIM has to remember
set history=500
" Set to auto read when a file is changed from the outside
set autoread
" Always show current position
set ruler
" Height of the command bar
set cmdheight=1
" A buffer becomes hidden when it is abandoned
set hid
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Don't redraw while executing macros (good performance config)
set lazyredraw
" For regular expressions turn magic on
set magic
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Add a bit extra margin to the left
set foldcolumn=1
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
" Use Unix as the standard file type
set ffs=unix,dos,mac
set nobackup
set nowb
set noswapfile
set expandtab
" Be smart when using tabs ;)
set smarttab
" Linebreak on 500 characters
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
au FocusGained,BufEnter * checktime
set rtp+=/usr/local/opt/fzf
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" Turn on the Wild menu
set wildmenu

" Enable filetype plugins
filetype plugin on
filetype indent on

set backupcopy=yes

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

let g:coc_filetype_map = ['javascriptreact', 'typescriptreact', 'javascript', 'typescript', 'javascript.typescript', 'css', 'less']
" nerdcommenter
let g:NERDSpaceDelims = 1
" 禁用自动注释下一行
" autocmd FileType * setlocal formatoptions-=cro
" 默认开启 gitgutter
let g:gitgutter_enabled = 1
set updatetime=50
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:mkdp_refresh_slow = 1

lua require'hop'.setup { keys = 'etovxqpdygfblzhckisuran', jump_on_sole_occurrence = false }
lua require('gitsigns').setup { current_line_blame = true, current_line_blame_opts = { delay = 1000 } }
lua require("toggleterm").setup()
" lua require("which-key").setup {}

" 剪切板同步
set clipboard=unnamed

let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

func! CompileRunGcc()
    exec "w"
    if &filetype == 'cpp'
        exec '!g++ -std=c++11 % -o /tmp/a.out && /tmp/a.out<'
        exec "!time ./%<"
    elseif &filetype == 'javascript'
        exec '!node %'
    elseif &filetype == 'java'
        exec '!javac %'
        exec '!java %<'
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
      exec '!python3 %'
    endif
endfunc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
" map <space> /

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
" map <leader>to :tabonly<cr>
" map <leader>tc :tabclose<cr>
" map <leader>tm :tabmove
map <leader>b :Buffers<cr>

map <leader>j :HopWord<cr>
" nnoremap <silent> <leader>t :LazyGit<CR>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif


inoremap <silent><expr> <C-j>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use <Tab> and <S-Tab> to navigate the completion list
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <silent><expr> <TAB>
      " \ pumvisible() ? coc#_select_confirm() :
      " \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      " \ <SID>check_back_space() ? "\<TAB>" :
      " \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  print(1)
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" vim-session 配置
nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>
nnoremap <leader>ev :vs ~/.config/nvim/init.vim<CR>
" 函数跳转
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Apply AutoFix to problem on the current line.
nmap <leader>qf <Plug>(coc-fix-current)
" Reload file
nnoremap <leader>r :e!<CR>
" Close buffer
nnoremap qq :q<CR>
nnoremap <leader>qq :qa!<CR>
" Source vim config
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>
" open commit history 
nnoremap <leader>h :DiffviewFileHistory<CR>
" open current file history`
nnoremap <leader>ch :DiffviewFileHistory %<CR>
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
" git diff
nnoremap <silent> <leader>d :Git<cr>
nnoremap <silent> <leader>gd :DiffviewOpen<cr>
nnoremap <silent> <leader>gc :DiffviewClose<cr>
nnoremap <F2> :Git blame<cr>
nnoremap <F3> :CocOutline<cr>
nnoremap <F5> : call CompileRunGcc()<CR>
nnoremap <leader>p :Prettier<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fw <cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>ft <cmd>TodoTelescope<cr>
nnoremap <leader>m <cmd>Telescope marks<cr>
noremap H ^
noremap L $
noremap M %
" imap jj <Esc>
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
nnoremap <C-f> :GFiles<CR>
nnoremap <A-f> :Files<CR>
nnoremap <silent> <Leader>a :Ag <C-R><C-W><CR>
nnoremap <Leader>gs :Ack!<Space>
" fix coc float window not disppear bug
" inoremap <C-c> <ESC>
" quickly console.log
" https://vi.stackexchange.com/questions/21894/how-to-insert-a-console-log-for-word-under-cursor-in-new-line
nnoremap <leader>l "ayiwoconsole.log('<C-R>a:', <C-R>a);<Esc>

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" insert mode 光标为竖线
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
let g:session_default_to_last = 1

""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
let g:yankstack_yank_keys = ['y', 'd']

nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-n> <Plug>yankstack_substitute_newer_paste

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'relativepath', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}'
      \ },
      \ 'component_visible_condition': {
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }

" assumes set ignorecase smartcase
augroup dynamic_smartcase
    autocmd!
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END

let g:toggleterm_terminal_mapping = '<C-t>'
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm size=20 direction='float'"<CR>

" ignore nerdtree when open session 
set sessionoptions-=blank

 """"""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""
if exists('$TMUX')
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color
    endif
endif

nnoremap <silent><F6> :NodeInspectRun<cr>
nnoremap <silent><F7> :NodeInspectStepInto<cr>
nnoremap <silent><F8> :NodeInspectStepOver<cr>
nnoremap <silent><F9> :NodeInspectToggleBreakpoint<cr>
nnoremap <silent><F10> :NodeInspectStop<cr>

" always show sign column
set signcolumn=yes

set completeopt=menu,menuone,noselect

" 解决 coc-references 关闭后 cursor 消失的问题
let g:coc_disable_transparent_cursor = 1
let g:onedark_terminal_italics=0
let g:onedark_termcolors=16
" autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
hi Normal guibg=NONE ctermbg=NONE
" colorscheme onehalflight
" hi! default CursorWord guibg=#b4dbfd ctermbg=223
colorscheme onedark

if has("termguicolors")
  " fix bug for vim
  set t_8f=[38;2;%lu;%lu;%lum
  set t_8b=[48;2;%lu;%lu;%lum

  " enable true color
  set termguicolors
endif

hi! default CursorWord guibg=#484b4d ctermbg=223
let g:cursorword_min_width = 1

" let g:coc_disable_uncaught_error = 1

lua << EOF
  require("todo-comments").setup {}
  require('git-conflict').setup()
  require("diffview").setup({ use_icons = false })
  require("telescope").load_extension("live_grep_args")
  local lga_actions = require("telescope-live-grep-args.actions")
  require "telescope".setup {
    extensions = {
      live_grep_args = {
        auto_quoting = true, -- enable/disable auto-quoting
        mappings = { -- extend mappings
          i = {
            ["<C-k>"] = lga_actions.quote_prompt(),
            ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
          },
        }
      }
    },
    pickers = {
      colorscheme = {
        enable_preview = true
      }
    }
  }
EOF

