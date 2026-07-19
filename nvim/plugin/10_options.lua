-- options
do
  -- enable faster startup by caching compiled Lua modules
  vim.loader.enable()

  vim.g.mapleader = ' '
  vim.g.maplocalleader = ' '
  vim.g.have_nerd_font = false
  vim.o.number = true
  vim.o.relativenumber = true
  vim.o.mouse = 'a'
  vim.o.clipboard = 'unnamedplus'
  vim.o.undofile = true
  vim.o.ignorecase = true
  vim.o.smartcase = true
  vim.o.signcolumn = 'yes'
  vim.o.swapfile = false
  vim.o.showmode = false

  -- decrease mapped sequence wait time
  vim.o.timeoutlen = 300
  vim.o.splitright = true
  vim.o.splitbelow = true
  vim.o.inccommand = 'split'
  vim.o.scrolloff = 10

  vim.o.autowriteall = true
  vim.o.expandtab = true
  vim.o.tabstop = 2
  vim.o.shiftwidth = 0
  vim.o.matchpairs = "(:),{:},[:],<:>"
  vim.o.autoindent = true
  vim.o.smartindent = true
  vim.o.smoothscroll = true
  vim.o.switchbuf = "usetab"
  -- vim.o.tabclose = "uselast"

  vim.cmd('filetype plugin indent on')
  if vim.fn.exists('syntax_on') ~= 1 then vim.cmd('syntax enable') end
end

-- keymaps
do
  vim.keymap.set({"n", "i", "v", "t"}, "<A-d>", ":vsplit .<cr>", { desc = "Open vertical split" })
  vim.keymap.set({"n", "i", "v", "t"}, "<A-s>", ":split .<cr>", { desc = "Open horizontal split" })
  vim.keymap.set({"n", "i", "v", "t"}, "<A-h>", ":wincmd h<cr>", { desc = "Move left split" })
  vim.keymap.set({"n", "i", "v", "t"}, "<A-j>", ":wincmd j<cr>", { desc = "Move down split" })
  vim.keymap.set({"n", "i", "v", "t"}, "<A-k>", ":wincmd k<cr>", { desc = "Move up split" })
  vim.keymap.set({"n", "i", "v", "t"}, "<A-l>", ":wincmd l<cr>", { desc = "Move right split" })
  vim.keymap.set({"n", "i", "v", "t"}, "<A-t>", ":term<cr>i", { desc = "Open terminal in split" })
  vim.keymap.set({"n", "i", "v", "t"}, "<A-z>", ":tab split<cr>", { desc = "Zoom current split" })
  vim.keymap.set({"n", "i", "v", "t"}, "<A-n>", ":enew<cr>", { desc = "Open new buffer in split" })

  -- clear highlights on search when pressing <Esc> in normal mode
  vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
end

vim.cmd.colorscheme 'nofrils-minimal-16'
