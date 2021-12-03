call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'joshdick/onedark.vim'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'preservim/nerdcommenter'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tomtom/tlib_vim'
Plug 'cooljser/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'easymotion/vim-easymotion'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'liuchengxu/vista.vim'
Plug 'junegunn/fzf.vim'
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}
" Plug 'kiteco/vim-plugin'
" Plug 'pechorin/any-jump.vim'
" Plug 'sheerun/vim-polyglot'
" Plug 'Chiel92/vim-autoformat'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'SirVer/ultisnips'
" Plug 'dyng/ctrlsf.vim'
" Plug 'mnishz/colorscheme-preview.vim'
" Plug 'tomasiser/vim-code-dark'
" Plug '907th/vim-auto-save'
" Plug 'sainnhe/gruvbox-material'
" Plug 'eliba2/vim-node-inspect'
" Plug 'yianwillis/vimcdoc'
" Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug '/usr/local/opt/fzf'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2
set softtabstop=2
set shiftwidth=2
set mouse=a
set nu
set relativenumber
set noeol
set cursorline
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
set rtp+=/usr/local/opt/fzf

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 键位映射 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
nnoremap <leader>ev :vs ~/cooljser/github/vimrc/my_configs.vim<CR>
noremap <leader>t :bot ter++rows=20<CR>
" 函数跳转
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" nmap <leader>t <Plug>(coc-terminal-toggle)
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Apply AutoFix to problem on the current line.
nmap <leader>qf <Plug>(coc-fix-current)
" Reload file
nnoremap <leader>r :e!<CR>
" Close buffer
nnoremap qq :q<CR>
" Source vim config
nnoremap <leader>sv :source ~/cooljser/github/vimrc/my_configs.vim<CR>
" open commit history 
nnoremap <leader>h :Commits<CR>
" open current file history`
nnoremap <leader>ch :BCommits<CR>
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
" git diff
nnoremap <silent> <leader>d :Git<cr>
nnoremap <F2> :Git blame<cr>
nnoremap <F3> :Vista!!<cr>
nnoremap <F4> :CocCommand eslint.executeAutofix<CR>
nnoremap <leader>p :Prettier<CR>
nnoremap <leader>f :CocCommand eslint.executeAutofix<CR>
map <C-A> ggVG$"+y``
noremap H ^
noremap L $
noremap M %
imap jj <Esc>
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <F5> : call CompileRunGcc()<CR>
nnoremap <C-f> :GFiles<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <silent> <Leader>a :Ag <C-R><C-W><CR>

let g:coc_filetype_map = ['javascriptreact', 'typescriptreact', 'javascript', 'typescript', 'javascript.typescript']
let g:ale_enabled = 0
" nerdcommenter
let g:NERDSpaceDelims = 1
" 默认开启 gitgutter
let g:gitgutter_enabled = 1
set updatetime=1000
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:ctrlp_mruf_case_sensitive = 0

" 剪切板同步
set clipboard=unnamed

let g:onedark_terminal_italics=1
let g:onedark_termcolors=16
" colorscheme onedark 
" autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_termcolors=16
let g:gruvbox_bold=0
" let g:gruvbox_transparent_bg=1
colorscheme gruvbox
" colorscheme onedark

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
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista_executive_for = {
      \ 'javascript': 'coc',
      \ 'typescript': 'coc',
      \ }
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
      \   "function": "\uf794",
      \   "variable": "\uf71b",
      \  }

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

let g:session_autoload = 'no'

" 禁止自动注释到新一行
augroup Format-Options
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    " This can be done as well instead of the previous line, for setting formatoptions as you choose:
    autocmd BufEnter * setlocal formatoptions=crqn2l1j
augroup END

