call plug#begin('~/.vim/plugged')
" ========= apperance here. ==========
Plug 'joshdick/onedark.vim'
Plug 'rafi/awesome-vim-colorschemes'
" Plug 'mnishz/colorscheme-preview.vim'
" Plug 'chxuan/change-colorscheme'

" ========= programming tools here. ==========
Plug 'neoclide/coc.nvim', {'commit': '0fd56dd25fc36606afe2290240aecb6e6ab85092'}
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'mattn/emmet-vim', {'for': ['html', 'javascript.jsx']}
Plug 'preservim/nerdcommenter'
Plug 'github/copilot.vim'
Plug 'ap/vim-css-color'

" ========= syntax support here. ==========
Plug 'groenewege/vim-less'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'sheerun/vim-polyglot'
Plug 'posva/vim-vue'

" ========= useful tools here. ==========
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'leafOfTree/vim-matchtag'
Plug 'phaazon/hop.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'xiyaowong/nvim-cursorword', { 'commit': '338d4f7de49ef654caf45beb86733a786943f933' }
Plug 'dstein64/vim-startuptime'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'eliba2/vim-node-inspect'
Plug 'vim-autoformat/vim-autoformat'
Plug 'kdheepak/lazygit.nvim'
Plug 'yggdroot/indentline'

" Plug 'liuchengxu/vista.vim'
" Plug 'dracula/vim'
" Plug 'tomtom/tlib_vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'cooljser/vim-snippets'
" Plug 'rstacruz/vim-ultisnips-css'
" Plug 'chr4/nginx.vim'
" Plug 'ryanoasis/vim-devicons'
" Plug 'nvim-treesitter/nvim-treesitter'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'sindrets/diffview.nvim'
" Plug 'mbbill/undotree'
" Plug 'pangloss/vim-javascript'
" Plug 'heavenshell/vim-jsdoc', {
  " \ 'for': ['javascript', 'javascript.jsx','typescript'],
  " \ 'do': 'make install'
" \}
" Plug 'azabiong/vim-highlighter'
" Plug 'jelera/vim-javascript-syntax'
" Plug 'othree/es.next.syntax.vim'
" Plug 'aserowy/tmux.nvim'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'garbas/vim-snipmate'
" Plug 'mhinz/vim-startify'
" Plug 'easymotion/vim-easymotion'
" Plug 'dense-analysis/ale'
" Plug 'github/copilot.vim'
" Plug 'dstein64/vim-startuptime'
" Plug 'kqito/vim-easy-replace'
" Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
" Plug '907th/vim-auto-save'
" Plug 'sainnhe/gruvbox-material'
call plug#end()

let mapleader = ","
" Fast saving
nmap <leader>w :wa<cr>


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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>b :Buffers<cr>

map <leader>j :HopWord<cr>
nnoremap <silent> <leader>t :LazyGit<CR>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

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

" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" cancel highlight
nnoremap <CR> :noh<CR><CR>
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
" Source vim config
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>
" open commit history 
nnoremap <leader>h :Commits<CR>
" open current file history`
nnoremap <leader>ch :BCommits<CR>
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
" git diff
nnoremap <silent> <leader>d :Git<cr>
nnoremap <F2> :Git blame<cr>
" nnoremap <F3> :Vista!!<cr>
nnoremap <F4> :Autoformat<cr>
nnoremap <F5> : call CompileRunGcc()<CR>
nnoremap <leader>p :Prettier<CR>
nnoremap <leader>f :CocCommand eslint.executeAutofix<CR>
noremap H ^
noremap L $
noremap M %
" imap jj <Esc>
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
nnoremap <C-f> :GFiles<CR>
nnoremap <silent> <Leader>a :Ag <C-R><C-W><CR>
nnoremap <Leader>g :Ack!<Space>

let g:coc_filetype_map = ['javascriptreact', 'typescriptreact', 'javascript', 'typescript', 'javascript.typescript', 'css', 'less']
" nerdcommenter
let g:NERDSpaceDelims = 1
" 默认开启 gitgutter
let g:gitgutter_enabled = 1
set updatetime=300
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:mkdp_refresh_slow = 1
let g:vim_matchtag_enable_by_default = 1
" html match tag
let g:vim_matchtag_files = '*.html'
let g:vim_matchtag_highlight_cursor_on = 1

lua require'hop'.setup { keys = 'etovxqpdygfblzhckisuran', jump_on_sole_occurrence = false }
lua require('gitsigns').setup { current_line_blame = true, current_line_blame_opts = { delay = 1000 } }

" 剪切板同步
set clipboard=unnamed

let g:onedark_terminal_italics=0
let g:onedark_termcolors=16
colorscheme onedark 
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
hi Normal guibg=NONE ctermbg=NONE
" let g:gruvbox_contrast_dark='soft'
" let g:gruvbox_termcolors=16
" let g:gruvbox_bold=0
" let g:gruvbox_transparent_bg=1
" let g:gruvbox_transparent_bg=1
" colorscheme gruvbox

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
    endif
endfunc

" Add `:Format` command to format current buffer.
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" vista.vim
" function! NearestMethodOrFunction() abort
  " return get(b:, 'vista_nearest_method_or_function', '')
" endfunction

" set statusline+=%{NearestMethodOrFunction()}

" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
" let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
" let g:vista_default_executive = 'ctags'
" let g:vista_executive_for = {
      " \ 'javascript': 'coc',
      " \ 'typescript': 'coc',
      " \ }
" let g:vista_ctags_cmd = {
      " \ 'haskell': 'hasktags -x -o - -c',
      " \ }
" let g:vista_fzf_preview = ['right:50%']
" let g:vista#renderer#enable_icon = 1
" let g:vista#renderer#icons = {
      " \   "function": "\uf794",
      " \   "variable": "\uf71b",
      " \  }

" insert mode 光标为竖线
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use <leader>x for convert visual selected code to snippet
xmap <leader>x <Plug>(coc-convert-snippet)

let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
let g:session_default_to_last = 1

" 禁止自动注释到新一行
augroup Format-Options
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    " This can be done as well instead of the previous line, for setting formatoptions as you choose:
    autocmd BufEnter * setlocal formatoptions=crqn2l1j
augroup END

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
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
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
      \             ['fugitive', 'readonly', 'relativepath', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
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

hi! CursorWord guibg=#484b4d ctermbg=223

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

" :W sudo saves the file
" (useful for handling the permission-denied error)
" command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
" map <leader>l :bnext<cr>
" map <leader>h :bprevious<cr>

set completeopt=menu,menuone,noselect
