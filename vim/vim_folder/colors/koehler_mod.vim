" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2006 Dec 10

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "koehler"
hi Normal		  guifg=white  guibg=#101010 gui=underline guisp=#333333
hi Scrollbar	  guifg=darkcyan guibg=cyan
hi Menu			  guifg=black guibg=cyan
hi SpecialKey	  term=bold  cterm=bold  ctermfg=darkred  guifg=#cc0000
hi NonText		  term=bold  cterm=bold  ctermfg=darkred  gui=bold      guifg=#cc0000
hi Directory	  term=bold  cterm=bold  ctermfg=214  guifg=#cc8000
hi ErrorMsg		  term=standout  cterm=bold  ctermfg=grey  ctermbg=red  guifg=White  guibg=Red
hi Search		  term=reverse  ctermfg=white  ctermbg=red      guifg=white  guibg=Red
hi MoreMsg		  term=bold  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=SeaGreen
hi ModeMsg		  term=bold  cterm=bold  gui=bold  guifg=White	guibg=Blue
hi LineNr		  term=underline  cterm=bold  ctermfg=darkcyan	guifg=cyan guibg=#303030
hi CursorLineNr   guifg=yellow guibg=#303030
hi Question		  term=standout  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=Green
hi StatusLine	  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi StatusLineNC   term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi Title		  term=bold  cterm=bold  ctermfg=darkmagenta  gui=bold	guifg=Magenta
hi Visual		  term=reverse	cterm=reverse  gui=reverse
hi WarningMsg	  term=standout  cterm=bold  ctermfg=darkred guifg=Red
hi Cursor		  guifg=bg	guibg=Green
hi Comment		  term=bold  cterm=bold ctermfg=cyan  guifg=#00ffff gui=bold
hi Constant		  term=underline  cterm=bold ctermfg=magenta  guifg=#ffa0a0
hi Special		  term=bold  cterm=bold ctermfg=red  guifg=Orange
hi Identifier	  term=underline   ctermfg=214  guifg=#cc8822 gui=bold
hi Statement	  term=bold  cterm=bold ctermfg=yellow	gui=bold  guifg=#ffff60
hi PreProc		  term=underline  ctermfg=darkmagenta   guifg=#ff80ff
hi Type			  term=underline  cterm=bold ctermfg=lightgreen  gui=bold  guifg=#60ff60
hi Error		  term=reverse	ctermfg=darkcyan  ctermbg=black  guifg=Red	guibg=#101010
hi Todo			  term=standout  ctermfg=black	ctermbg=darkcyan  guifg=Blue  guibg=Yellow
" hi MatchParen	  term=reverse  ctermfg=white guibg=White
hi MatchParen     cterm=bold ctermbg=none ctermfg=51 gui=bold guifg=#00ffff guibg=#101010
hi TabLine		  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineFill	  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineSel	  term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi SpellCap       ctermbg=214 guisp=orange
hi SpellBad       ctermbg=red 
hi link IncSearch		Visual
hi link String			Constant
hi link Character		Constant
hi link Number			Constant
hi link Boolean			Constant
hi link Float			Number
hi link Function		Identifier
hi link Conditional		Statement
hi link Repeat			Statement
hi link Label			Statement
hi link Operator		Statement
hi link Keyword			Statement
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special
highlight PmenuSel ctermfg=0 ctermbg=255 guifg=black guibg=lightgrey
highlight Pmenu ctermfg=255 ctermbg=26 guifg=lightgrey guibg=RoyalBlue3
hi CursorLine   gui=underline  cterm=underline guibg=#101010
hi CursorColumn ctermbg=237  guibg=#505050 
