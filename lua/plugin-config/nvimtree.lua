-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', 's', api.node.open.vertical, opts('Open: Vertical Split'))
end

-- OR setup with some options
require("nvim-tree").setup({
  on_attach = my_on_attach,
  auto_reload_on_write = true,
  sort_by = "case_sensitive",
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {},
  },
  view = {
    width = 40,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
