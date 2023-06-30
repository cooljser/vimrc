-------------------------------------------------
-- DT'S NEOVIM CONFIGURATION
-- Neovim website: https://neovim.io/
-- DT's dotfiles: https://gitlab.com/dwt1/dotfiles
-------------------------------------------------

-------------------------------------------------
-- KEYBINDINGS
-------------------------------------------------

local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end

-- Basic map
map("n", "qq", "<CMD>q!<CR>")
map("n", "<leader>qq", "<CMD>qa!<CR>")
map("n", "<leader><cr>", "<CMD>noh<CR>")
map("n", "<leader>j", "<CMD>HopWord<CR>")
map("n", "<leader>w", "<CMD>wa<CR>")

map("n", "<leader>tn", "<CMD>tabnew<CR>")
map("n", "<leader>1", "1gt<CR>")
map("n", "<leader>2", "2gt<CR>")
map("n", "<leader>3", "3gt<CR>")
map("n", "<leader>ev", "<CMD>:vs ~/.config/nvim/init.lua<CR>")
map("n", "<leader>r", "<CMD>e!<CR>")
map("n", "H", "^")
map("n", "dh", "d^")
map("n", "L", "$")
map("n", "dl", "d$")
map("n", "M", "%")

-- Mimic shell movements
map("i", "<C-E>", "<ESC>A")
map("i", "<C-A>", "<ESC>I")

-- Load recent sessions
map("n", "<leader>sl", "<CMD>SessionLoad<CR>")

-- Keybindings for telescope
map("n", "<leader>fr", "<CMD>Telescope oldfiles<CR>")
map("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
map("n", "<leader>fw", "<CMD>Telescope live_grep<CR>")
map("n", "<leader>fb", "<CMD>Telescope buffers<CR>")
map("n", "<leader>ht", "<CMD>Telescope colorscheme<CR>")

-- NvimTree
map("n", "<leader>nn", "<CMD>NvimTreeToggle<CR>")
map("n", "<leader>nf", "<CMD>NvimTreeFindFile<CR>")

-- Smart way to move between windows
map("n", "<C-j>", "<C-W>j")
map("n", "<C-k>", "<C-W>k")
map("n", "<C-h>", "<C-W>h")
map("n", "<C-l>", "<C-W>l")

-- Sessions
map("n", "<leader>so", "<CMD>OpenSession<CR>")
map("n", "<leader>ss", "<CMD>SaveSession<CR>")

-- Ack
vim.keymap.set("n", "<leader>g", ":Ack!<Space>", { silent = false })

-- Prettier
vim.cmd("command! -nargs=0 Prettier :CocCommand prettier.formatFile")
map("n", "<leader>p", "<CMD>Prettier<CR>")

-- Run javascript
map("n", "<F5>", "<CMD>!node %<CR>")
map("n", "<F2>", "<CMD>Git blame<CR>")

-- Git diffview
map("n", "<leader>d", "<CMD>Git<CR>")
map('n', "<leader>h", "<CMD>DiffviewFileHistory<CR>")
map('n', "<leader>ch", "<CMD>DiffviewFileHistory %<CR>")
map('n', "<leader>gd", "<CMD>DiffviewOpen<CR>")
map('n', "<leader>gc", "<CMD>DiffviewClose<CR>")

-- Fzf
map('n', "<C-f>", "<CMD>FzfLua files<CR>")
map('n', "<leader>a", "<CMD>FzfLua grep_cword<CR>")

-- 插件快捷键
local pluginKeys = {}

pluginKeys.mapToggleTerm = function(toggleterm)
  vim.keymap.set({ "n", "t" }, "<leader>ta", toggleterm.toggleA)
  vim.keymap.set({ "n", "t" }, "<leader>tb", toggleterm.toggleB)
  vim.keymap.set({ "n", "t" }, "<leader>tc", toggleterm.toggleC)
  vim.keymap.set({ "n", "t" }, "<leader>tg", toggleterm.toggleG)
end

return pluginKeys
