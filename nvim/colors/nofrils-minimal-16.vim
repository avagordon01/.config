hi clear

if exists("syntax on")
syntax reset
endif

set t_Co=16
set background=dark
set notermguicolors
let g:colors_name = "nofrils-minimal-16"

let s:bg="black"
let s:fg="white"
let s:search="darkcyan"
let s:comment="grey"
let s:string="darkgreen"
let s:error="red"
let s:warning="yellow"

exe 'hi Normal ctermfg='s:fg' ctermbg='s:bg
exe 'hi Cursor ctermfg='s:bg' ctermbg='s:fg 'cterm=none'
exe 'hi LineNr ctermfg='s:comment' ctermbg='s:bg
exe 'hi CursorLineNr ctermfg='s:fg' ctermbg='s:bg
exe 'hi VertSplit ctermfg='s:fg' ctermbg='s:bg
exe 'hi MatchParen ctermfg='s:search' ctermbg='s:bg' cterm=bold'
exe 'hi StatusLine ctermfg='s:fg' ctermbg='s:bg
exe 'hi Pmenu ctermfg='s:fg' ctermbg='s:bg
exe 'hi PmenuSel ctermbg='s:bg
exe 'hi CurSearch ctermfg='s:bg' ctermbg='s:search
exe 'hi IncSearch ctermfg='s:bg' ctermbg='s:search
exe 'hi Search ctermfg='s:bg' ctermbg='s:search
exe 'hi Directory ctermfg='s:fg
exe 'hi Folded ctermfg='s:fg' ctermbg='s:bg
exe 'hi WildMenu ctermfg='s:string' ctermbg='s:bg

exe 'hi Boolean ctermfg='s:fg
exe 'hi Character ctermfg='s:string
exe 'hi Comment ctermfg='s:comment
exe 'hi Conditional ctermfg='s:fg
exe 'hi Constant ctermfg='s:fg
exe 'hi Todo ctermbg='s:bg
exe 'hi Define ctermfg='s:fg
exe 'hi DiffAdd ctermfg='s:fg' ctermbg='s:bg' cterm=bold'
exe 'hi DiffDelete ctermbg=red'
exe 'hi DiffChange ctermfg='s:fg' ctermbg='s:bg
exe 'hi DiffText ctermfg='s:fg' ctermbg=red cterm=bold'
exe 'hi ErrorMsg ctermfg='s:error' ctermbg='s:bg' cterm=bold'
exe 'hi WarningMsg ctermfg='s:fg' ctermbg='s:warning
exe 'hi Float ctermfg='s:fg
exe 'hi Function ctermfg='s:fg
exe 'hi Identifier ctermfg='s:fg
exe 'hi Keyword ctermfg='s:fg
exe 'hi Label ctermfg='s:fg
exe 'hi NonText ctermfg='s:fg' ctermbg='s:bg
exe 'hi Number ctermfg='s:fg
exe 'hi Operator ctermfg='s:fg
exe 'hi PreProc ctermfg='s:string
exe 'hi Special ctermfg='s:fg
exe 'hi SpecialKey ctermfg='s:fg' ctermbg='s:bg
exe 'hi Statement ctermfg='s:fg
exe 'hi StorageClass ctermfg='s:fg
exe 'hi String ctermfg='s:string
exe 'hi Tag ctermfg='s:fg
exe 'hi Title ctermfg='s:fg' cterm=bold'
exe 'hi Todo cterm=inverse,bold'
exe 'hi Type ctermfg='s:fg
exe 'hi Underlined cterm=underline'

exe 'hi MiniDiffSignAdd ctermfg=darkgreen'
exe 'hi MiniDiffSignChange ctermfg=darkblue'
exe 'hi MiniDiffSignDelete ctermfg=darkred'

exe 'hi GitSignsAdd ctermfg=darkgreen'
exe 'hi GitSignsChange ctermfg=darkblue'
exe 'hi GitSignsDelete ctermfg=darkred'
