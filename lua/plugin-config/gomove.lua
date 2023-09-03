require("gomove").setup {
  -- whether or not to map default key bindings, (true/false)
  map_defaults = true,
  -- whether or not to reindent lines moved vertically (true/false)
  reindent = true,
  -- whether or not to undojoin same direction moves (true/false)
  undojoin = true,
  -- whether to not to move past end column when moving blocks horizontally, (true/false)
  move_past_end_col = false,
}

local map = vim.api.nvim_set_keymap

map( "n", "<M-h>", "<Plug>GoNSMLeft", {} )
map( "n", "<M-j>", "<Plug>GoNSMDown", {} )
map( "n", "<M-k>", "<Plug>GoNSMUp", {} )
map( "n", "<M-l>", "<Plug>GoNSMRight", {} )

map( "x", "<M-h>", "<Plug>GoVSMLeft", {} )
map( "x", "<M-j>", "<Plug>GoVSMDown", {} )
map( "x", "<M-k>", "<Plug>GoVSMUp", {} )
map( "x", "<M-l>", "<Plug>GoVSMRight", {} )
