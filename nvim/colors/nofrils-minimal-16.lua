if vim.g.colors_name then
  vim.cmd.hi("clear")
else
end

vim.g.colors_name = "nofrils-minimal-16"

vim.o.background = "dark"
vim.o.termguicolors = false

local background = "black"
local foreground = "white"
local search = "darkcyan"
local comment = "grey"
local string = "darkgreen"
local error = "red"
local warning = "yellow"

vim.api.nvim_set_hl(0, "Normal", { ctermfg = foreground, ctermbg = background })
vim.api.nvim_set_hl(0, "Cursor", { ctermfg = background, ctermbg = foreground })
vim.api.nvim_set_hl(0, "LineNr", { ctermfg = comment, ctermbg = background })
vim.api.nvim_set_hl(0, "CursorLineNr", { ctermfg = foreground, ctermbg = background })
vim.api.nvim_set_hl(0, "VertSplit", { ctermfg = foreground, ctermbg = background })
vim.api.nvim_set_hl(0, "MatchParen", { ctermfg = search, ctermbg = background, bold = true })
vim.api.nvim_set_hl(0, "StatusLine", { ctermfg = foreground, ctermbg = background })
vim.api.nvim_set_hl(0, "Pmenu", { ctermfg = foreground, ctermbg = background })
vim.api.nvim_set_hl(0, "PmenuSel", { ctermbg = background })
vim.api.nvim_set_hl(0, "CurSearch", { ctermfg = background, ctermbg = search })
vim.api.nvim_set_hl(0, "IncSearch", { ctermfg = background, ctermbg = search })
vim.api.nvim_set_hl(0, "Search", { ctermfg = background, ctermbg = search })
vim.api.nvim_set_hl(0, "Directory", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "Folded", { ctermfg = foreground, ctermbg = background })
vim.api.nvim_set_hl(0, "WildMenu", { ctermfg = string, ctermbg = background })

vim.api.nvim_set_hl(0, "Boolean", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "Character", { ctermfg = string })
vim.api.nvim_set_hl(0, "Comment", { ctermfg = comment })
vim.api.nvim_set_hl(0, "Conditional", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "Constant", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "Todo", { ctermbg = background })
vim.api.nvim_set_hl(0, "Define", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "DiffAdd", { ctermfg = foreground, ctermbg = background, bold = true })
vim.api.nvim_set_hl(0, "DiffDelete", { ctermbg = red })
vim.api.nvim_set_hl(0, "DiffChange", { ctermfg = foreground, ctermbg = background })
vim.api.nvim_set_hl(0, "DiffText", { ctermfg = foreground, ctermbg = red, bold = true })
vim.api.nvim_set_hl(0, "ErrorMsg", { ctermfg = error, ctermbg = background, bold = true })
vim.api.nvim_set_hl(0, "WarningMsg", { ctermfg = foreground, ctermbg = warning })
vim.api.nvim_set_hl(0, "Float", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "Function", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "Identifier", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "Keyword", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "Label", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "NonText", { ctermfg = foreground, ctermbg = background })
vim.api.nvim_set_hl(0, "Number", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "Operator", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "PreProc", { ctermfg = string })
vim.api.nvim_set_hl(0, "Special", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "SpecialKey", { ctermfg = foreground, ctermbg = background })
vim.api.nvim_set_hl(0, "Statement", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "StorageClass", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "String", { ctermfg = string  })
vim.api.nvim_set_hl(0, "Tag", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "Title", { ctermfg = foreground, bold = true })
vim.api.nvim_set_hl(0, "Todo", { reverse = true, bold = true })
vim.api.nvim_set_hl(0, "Type", { ctermfg = foreground })
vim.api.nvim_set_hl(0, "Underlined", { underline = true })

vim.api.nvim_set_hl(0, "MiniDiffSignAdd", { ctermfg = darkgreen })
vim.api.nvim_set_hl(0, "MiniDiffSignChange", { ctermfg = darkblue })
vim.api.nvim_set_hl(0, "MiniDiffSignDelete", { ctermfg = darkred })

vim.api.nvim_set_hl(0, "GitSignsAdd", { ctermfg = darkgreen })
vim.api.nvim_set_hl(0, "GitSignsChange", { ctermfg = darkblue })
vim.api.nvim_set_hl(0, "GitSignsDelete", { ctermfg = darkred })
