" Vim color file
" Maintainer:	Mark Sergeant <msergeant@gmail.com>
" Last Change:	Tue  8 Dec 2009 15:46:59 EST
" Version:	1
" URL:		www.sleekgeek.net/~msergeant/sg.vim
" 
" This colorscheme script was created using Hans Fugal's colorscheme template

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name="sg"

hi Normal				cterm=NONE					gui=NONE			guibg=#000000	guifg=#d6ebf0
hi Cursor				cterm=NONE					guibg=#44ff44		guifg=#000000
hi link 				CursorIM Cursor
hi Directory			ctermfg=cyan				guifg=#44ffff
hi DiffAdd				ctermbg=blue				ctermfg=yellow		guibg=#080888	guifg=#ffff00
hi DiffDelete			ctermbg=black				ctermfg=darkgray	guibg=#080808	guifg=#444444
hi DiffChange			ctermbg=black				guibg=#080808		guifg=#ffffff
hi DiffText				ctermbg=black				ctermfg=darkred		guibg=#080808	guifg=#bb0000
hi ErrorMsg				ctermbg=darkred				ctermfg=white		guibg=#880000	guifg=#ffffff
hi Folded				ctermbg=black				ctermfg=darkblue	guibg=black		guifg=#000088
hi link 				FoldColumn Folded
hi IncSearch			ctermbg=black				ctermfg=gray		guibg=#000000	guifg=#bbcccc
hi LineNr				ctermfg=gray				guibg=#404040		guifg=#ffff00
hi ModeMsg				ctermfg=white				guifg=#ffffff
hi MoreMsg				ctermfg=green				guifg=#44ff44
hi NonText				ctermfg=darkgray			guifg=#ff4444
hi Question				ctermfg=yellow				guifg=#ffff00
hi Search				ctermbg=NONE				ctermfg=green		guibg=NONE		guifg=green
hi SpecialKey			ctermfg=blue				guifg=#4444ff
hi StatusLine			cterm=NONE ctermbg=darkcyan	ctermfg=white		gui=NONE		guibg=#00aaaa	guifg=#ffffff
hi StatusLineNC			cterm=NONE ctermbg=gray		ctermfg=black		gui=NONE		guibg=#bbbbbb	guifg=#000000
hi link 				VertSplit StatusLineNC			
hi Title				ctermfg=white				guifg=#ffffff
hi Visual				cterm=NONE ctermbg=gray		ctermfg=black		gui=NONE		guibg=#bbbbbb	guifg=#000000
hi link 				VisualNOS Visual
hi WarningMsg			ctermfg=yellow				guifg=#ffff00
"hi WildMenu	
"hi Menu		
"hi Scrollbar	
"hi Tooltip		

" syntax highlighting groups
hi Comment				ctermfg=blue			guifg=#4444ff
hi Constant				ctermfg=darkcyan		guifg=#00aaaa
hi Identifier 			ctermfg=white			guifg=#ffffff
hi Statement 			ctermfg=cyan			guifg=#44ffff
hi PreProc				ctermfg=darkcyan		guifg=#00aaaa
hi Type					ctermfg=white			guifg=#ffffff
hi Special				ctermfg=blue			cterm=bold			guifg=#6666ff	gui=bold
hi Underlined			ctermfg=blue			guifg=#4444ff
hi Ignore				ctermfg=darkgray		guifg=#444444
hi Error				ctermbg=black			ctermfg=darkred		guibg=#000000	guifg=#bb0000
hi Todo					ctermbg=darkred			ctermfg=yellow		guibg=#aa0006	guifg=#fff300

hi link Character		Constant
hi link Number			Constant
hi link Boolean			Constant
hi link Float			Number
hi link Conditional		Statement
hi link Label			Statement
hi link Keyword			Statement
hi link Exception		Statement
hi link Repeat			Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special
hi link FoldColumn		Folded
