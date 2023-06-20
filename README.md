# Neovim Config 
Neovim config for frontend developes

## Snapshot
![](https://cooljser-image.oss-cn-shanghai.aliyuncs.com/20230619162333.png)
![](https://cooljser-image.oss-cn-shanghai.aliyuncs.com/20230619162403.png)

## Pre requirements
- vim-plug
- neovim latest version

## Install 
```bash
git clone https://github.com/cooljser/vimrc.git ~/.config/nvim
```

## Core Plugin List
- neoclide/coc.nvim
- github/copilot.vim
- rafi/awesome-vim-colorschemes
- peitalin/vim-jsx-typescript
- leafgarland/typescript-vim
- sheerun/vim-polyglot
- junegunn/fzf.vim
- nvim-telescope/telescope.nvim
- preservim/nerdtree
- phaazon/hop.nvim
- sindrets/diffview.nvim

## Key Mapping
Default leader key is space

|  Key   | Description |
|  ----  | ----  |
| C-s  | Save file |
| \<leader\>w  | Save file |
| qq | close buffer |
| \<leader\>qq | close current window |
| \<leader\>rn | rename symbol |
| \<leader\>qf | quick fix |
| \<leader\>r | force reload |
| \<leader\>sv | source neovim config file|
| \<leader\>ev | open neovim config file |
| \<leader\>1 | 1gt |
| \<leader\>2 | 2gt |
| \<leader\>3 | 3gt |
| H | ^ |
| L | $ | 
| M | % |
| C-f | fzf GFiles |
| A-f | fzf Files |
| \<leader\>a | Ag |
| \<leader\>gs | Ack |
| \<leader\>l | quick log with current cursor word |
| F2 | Git blame |
| F3 | CocOutline |
| F5 | compile run | 
| F6 | NodeInspectRun |
| F7 | NodeInspectStepInto | 
| F8 | NodeInspectStepOver |
| F9 | NodeInspectToggleBreakpoint |
| F10 | NodeInspectStop |

Telescope

|  Key   | Description |
|  ----  | ----  |
| \<leader\>ff | find_files |
| \<leader\>fw | lua require('telescope').extensions.live_grep_args.live_grep_args() |
| \<leader\>fb | buffers |
| \<leader\>fh | help_tags |
| \<leader\>ft | TodoTelescope |
| \<leader\>m | marks |

Git 

|  Key   | Description |
|  ----  | ----  |
| \<leader\>d | Git |
| \<leader\>gd | open diffview |
| \<leader\>gc | close diffview |
