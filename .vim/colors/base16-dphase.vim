" Base16 Eighties (https://github.com/chriskempson/base16)
" Scheme: Chris Kempson (http://chriskempson.com)

" GUI color definitions
let s:gui00 = "212121"
let s:gui01 = "393939"
let s:gui02 = "515151"
let s:gui03 = "747369"
let s:gui04 = "a09f93"
let s:gui05 = "d3d0c8"
let s:gui06 = "e8e6df"
let s:gui07 = "f2f0ec"
let s:gui08 = 'ff8d8d'
let s:gui09 = "ffa56f"
let s:gui0A = "ffcc66"
let s:gui0B = "99cc99"
let s:gui0C = "66cccc"
let s:gui0D = "6699cc"
let s:gui0E = "cc99cc"
let s:gui0F = "d27b53"

" a few editions
let s:guiER  = "e45050"
let s:guiSC  = "393939"
let s:guiFC  = "292929"
let s:guiSL  = "a24545"
let s:guiPM  = "616161"
let s:guiCY  = "63cbf5"
let s:guiCY2 = "8af0ff"
let s:guiWT  = "ffffff"
let s:guiGR  = "8fb000"
let s:guiCV  = "f5b0c4"
let s:guiBY  = "bbc64d"
let s:guiFL  = "475867"
let s:guiTD  = "db970f"
let s:guiHL  = "4d4f5c"

" CDE-ish Colors
" ------------------------------------------------------------------------------- 
" let s:cdeBackground   = '2c2e36'
let s:cdeBackground   = '181f26'
let s:cdeCursorline   = '151b21'
let s:cdeGutter       = '3f414d'
let s:cdeGutterHi     = '535663'
let s:cdeGutterText   = '818594'
let s:cdeGutterTextHi = '9094a3'
let s:cdeEOL          = '32343d'
" let s:cdeProjects     = '26272b'
let s:cdeProjects     = '181b1f'
" let s:cdeProjects     = '1f2126'

let s:cdeGitAdd = '839e64'

let s:cdeRed          = 'e87d91'
let s:cdeGreen        = 'a2c781'
" ------------------------------------------------------------------------------- 

" Terminal color definitions
let s:cterm00 = "000"
let s:cterm03 = "236"
let s:cterm05 = "252"
let s:cterm07 = "015"
let s:cterm08 = "01"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"

let s:cterm01 = "234"
let s:cterm02 = "235"
let s:cterm04 = "243"
let s:cterm06 = "255"
let s:cterm09 = "208"
let s:cterm0F = "166"

" Theme setup
" ------------------------------------------------------------------------------- 
hi clear
syntax reset
let g:colors_name = "base16-dphase"

" Highlighting function
fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . s:gui(a:guifg)
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . s:gui(a:guibg)
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . s:cterm(a:ctermfg)
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . s:cterm(a:ctermbg)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" Return GUI color for light/dark variants
fun s:gui(color)
  if &background == "dark"
    return a:color
  endif

  if a:color == s:cdeBackground
    return s:gui07
  elseif a:color == s:gui01
    return s:gui06
  elseif a:color == s:gui02
    return s:gui05
  elseif a:color == s:gui03
    return s:gui04
  elseif a:color == s:gui04
    return s:gui03
  elseif a:color == s:gui05
    return s:gui02
  elseif a:color == s:gui05
    return s:gui02
  elseif a:color == s:gui06
    return s:gui01
  elseif a:color == s:gui07
    return s:cdeBackground
  endif

  return a:color
endfun

" Return terminal color for light/dark variants
fun s:cterm(color)
  if &background == "dark"
    return a:color
  endif

  if a:color == s:cterm00
    return s:cterm07
  elseif a:color == s:cterm01
    return s:cterm06
  elseif a:color == s:cterm02
    return s:cterm05
  elseif a:color == s:cterm03
    return s:cterm04
  elseif a:color == s:cterm04
    return s:cterm03
  elseif a:color == s:cterm05
    return s:cterm02
  elseif a:color == s:cterm05
    return s:cterm02
  elseif a:color == s:cterm06
    return s:cterm01
  elseif a:color == s:cterm07
    return s:cterm00
  endif

  return a:color
endfun

" Vim editor colors
call <sid>hi("Bold",          "", "", "", "", "bold")
call <sid>hi("Debug",         s:cdeRed, "", s:cterm08, "", "")
call <sid>hi("Directory",     s:gui0D, "", s:cterm0D, "", "")
call <sid>hi("Error",         s:gui07, s:guiER, s:cterm08, s:cterm00, "bold,bevel")
call <sid>hi("ErrorMsg",      s:cdeRed, s:cdeBackground, s:cterm08, s:cterm00, "")
call <sid>hi("Exception",     s:cdeRed, "", s:cterm08, "", "")
call <sid>hi("FoldColumn",    s:gui0D, s:guiFC, "", s:cterm01, "")
call <sid>hi("Folded",        s:gui05, s:guiFL, s:cterm03, s:cterm01, "")
call <sid>hi("IncSearch",     s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Italic",        "", "", "", "", "none")
call <sid>hi("Macro",         s:cdeRed, "", s:cterm08, "", "")
call <sid>hi("MatchParen",    s:gui03, s:cdeBackground, s:cterm03, s:cterm00,  "reverse")
call <sid>hi("ModeMsg",       s:cdeGreen, "", s:cterm0B, "", "")
call <sid>hi("MoreMsg",       s:cdeGreen, "", s:cterm0B, "", "")
call <sid>hi("Question",      s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Search",        s:gui0A, s:gui01, s:cterm0A, s:cterm01,  "reverse")
call <sid>hi("SpecialKey",    s:guiCV, "", s:cterm03, "", "")
call <sid>hi("TooLong",       s:cdeRed, "", s:cterm08, "", "")
call <sid>hi("Underlined",    s:cdeRed, "", s:cterm08, "", "")
call <sid>hi("Visual",        "", s:guiHL, "", s:cterm02, "")
call <sid>hi("VisualNOS",     s:cdeRed, "", s:cterm08, "", "")
call <sid>hi("WarningMsg",    s:cdeRed, "", s:cterm08, "", "")
call <sid>hi("WildMenu",      s:cdeRed, "", s:cterm08, "", "")
call <sid>hi("Title",         s:gui0D, "", s:cterm0D, "", "none")
call <sid>hi("Conceal",       s:guiCY, s:cdeBackground, s:cterm0D, s:cterm00, "bold")
call <sid>hi("Cursor",        s:cdeBackground, s:gui05, s:cterm00, s:cterm05, "")
call <sid>hi("NonText",       s:gui03, "", s:cterm03, "", "")
call <sid>hi("Normal",        s:gui05, s:cdeBackground, s:cterm05, "none", "")
call <sid>hi("LineNr",        s:cdeGutterText, s:cdeGutter, s:cterm04, s:cterm02, "")
call <sid>hi("SignColumn",    s:gui03, s:cdeGutter, s:cterm04, s:cterm02, "")
call <sid>hi("StatusLine",    s:gui04, s:gui02, s:cterm04, s:cterm02, "bevel")
call <sid>hi("StatusLineNC",  s:gui03, s:gui01, s:cterm03, s:cterm01, "bevel")
call <sid>hi("VertSplit",     s:gui03, s:gui03, s:cterm02, s:cterm02, "vbevel")
call <sid>hi("ColorColumn",   "", s:cdeEOL, "", s:cterm01, "none")
call <sid>hi("CursorColumn",  "", s:gui01, "", s:cterm05, "none")
call <sid>hi("CursorLine",    "", s:cdeCursorline, "", s:cterm01, "none")
call <sid>hi("CursorLineNr",  s:cdeGutterTextHi, s:cdeGutterHi, s:cterm05, s:cterm03, "")
call <sid>hi("PMenu",         s:gui06, s:guiPM, s:cterm04, s:cterm01, "none")
call <sid>hi("PMenuSel",      s:guiWT, s:guiTD, s:cterm04, s:cterm01, "bold,bevel")
call <sid>hi("TabLine",       s:gui03, s:gui01, s:cterm03, s:cterm01, "none")
call <sid>hi("TabLineFill",   s:gui03, s:gui01, s:cterm03, s:cterm01, "none")
call <sid>hi("TabLineSel",    s:cdeGreen, s:gui01, s:cterm0B, s:cterm01, "none")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:gui09, "", s:cterm09, "", "")
call <sid>hi("Character",    s:cdeRed, "", s:cterm08, "", "")
call <sid>hi("Comment",      s:gui04, "", s:cterm04, "", "")
call <sid>hi("Conditional",  s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("Constant",     s:gui09, "", s:cterm09, "", "")
call <sid>hi("Define",       s:gui0E, "", s:cterm0E, "", "none")
call <sid>hi("Delimiter",    s:gui0F, "", s:cterm0F, "", "")
call <sid>hi("Float",        s:guiCY, "", s:cterm09, "", "")
call <sid>hi("Function",     s:gui0D, "", s:cterm0D, "", "")
call <sid>hi("Identifier",   s:cdeRed, "", s:cterm08, "", "none")
call <sid>hi("Include",      s:gui0D, "", s:cterm0D, "", "")
call <sid>hi("Keyword",      s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("Label",        s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Number",       s:guiCY, "", s:cterm09, "", "")
call <sid>hi("Operator",     s:gui05, "", s:cterm05, "", "none")
call <sid>hi("PreProc",      s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Repeat",       s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Special",      s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("SpecialChar",  s:gui0F, "", s:cterm0F, "", "")
call <sid>hi("Statement",    s:cdeRed, "", s:cterm08, "", "")
call <sid>hi("StorageClass", s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("String",       s:cdeGreen, "", s:cterm0B, "", "")
call <sid>hi("Structure",    s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("Tag",          s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("Todo",         s:guiWT, s:guiTD, s:cterm0A, s:cterm01, "bold,bevel")
call <sid>hi("Type",         s:gui09, "", s:cterm09, "", "none")
call <sid>hi("Typedef",      s:gui0A, "", s:cterm0A, "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", s:cdeBackground, "", s:cterm00, "undercurl")
call <sid>hi("SpellLocal",   "", s:cdeBackground, "", s:cterm00, "undercurl")
call <sid>hi("SpellCap",     "", s:cdeBackground, "", s:cterm00, "undercurl")
call <sid>hi("SpellRare",    "", s:cdeBackground, "", s:cterm00, "undercurl")

" Additional diff highlighting
call <sid>hi("DiffAdd",      s:cdeGreen, s:cdeBackground, s:cterm0B, s:cterm00, "")
call <sid>hi("DiffChange",   s:gui0D, s:cdeBackground, s:cterm0D, s:cterm00, "")
call <sid>hi("DiffDelete",   s:cdeRed, s:cdeBackground, s:cterm08, s:cterm00, "")
call <sid>hi("DiffText",     s:gui0D, s:cdeBackground, s:cterm0D, s:cterm00, "")
call <sid>hi("DiffAdded",    s:cdeGreen, s:cdeBackground, s:cterm0B, s:cterm00, "")
call <sid>hi("DiffFile",     s:cdeRed, s:cdeBackground, s:cterm08, s:cterm00, "")
call <sid>hi("DiffNewFile",  s:cdeGreen, s:cdeBackground, s:cterm0B, s:cterm00, "")
call <sid>hi("DiffLine",     s:gui0D, s:cdeBackground, s:cterm0D, s:cterm00, "")
call <sid>hi("DiffRemoved",  s:cdeRed, s:cdeBackground, s:cterm08, s:cterm00, "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               s:gui0D, "", s:cterm0D, "", "")
call <sid>hi("rubyConceal",                 s:gui0A, "", s:cterm0A, "", "bold")
call <sid>hi("rubyConstant",                s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("rubyInterpolation",           s:gui0A, "", s:cterm0B, "", "")
call <sid>hi("rubyInterpolationDelimiter",  s:gui09, "", s:cterm0F, "", "")
call <sid>hi("rubyRegexp",                  s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("rubySymbol",                  s:gui0C, "", s:cterm0C, "", "")
call <sid>hi("rubyStringDelimiter",         s:cdeGreen, "", s:cterm0B, "", "")
call <sid>hi("rubyPseudoVariable",          s:guiCY, "", s:cterm0B, "", "")
call <sid>hi("rubyClassVariable",           s:guiCV, "", s:cterm0B, "", "")

" Slim highlighting
call <sid>hi("slimSection", s:cdeRed, "", s:cterm0D, "", "")
call <sid>hi("slimHeader", s:guiCY, "", s:cterm0D, "", "")
call <sid>hi("slimClass", s:gui0A, "", s:cterm0D, "", "")
call <sid>hi("slimIdChar", s:guiCY2, "", s:cterm0D, "", "")
call <sid>hi("slimId", s:guiCY2, "", s:cterm0D, "", "")
call <sid>hi("htmlTagName", s:guiCV, "", s:cterm0D, "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  s:gui05, "", s:cterm05, "", "")
call <sid>hi("phpComparison",      s:gui05, "", s:cterm05, "", "")
call <sid>hi("phpParent",          s:gui05, "", s:cterm05, "", "")

" HTML highlighting
call <sid>hi("htmlBold",    s:gui0A, "", s:cterm0A, "", "")
call <sid>hi("htmlItalic",  s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("htmlEndTag",  s:gui05, "", s:cterm05, "", "")
call <sid>hi("htmlTag",     s:gui05, "", s:cterm05, "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:gui05, "", s:cterm05, "", "")
call <sid>hi("cssClassName",   s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("cssColor",       s:gui0C, "", s:cterm0C, "", "")

" SASS highlighting
call <sid>hi("sassidChar",     s:cdeRed, "", s:cterm08, "", "")
call <sid>hi("sassClassChar",  s:gui09, "", s:cterm09, "", "")
call <sid>hi("sassInclude",    s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("sassMixing",     s:gui0E, "", s:cterm0E, "", "")
call <sid>hi("sassMixinName",  s:gui0D, "", s:cterm0D, "", "")

" JavaScript highlighting
call <sid>hi("javaScript",            s:gui05,  "", s:cterm05, "", "")
call <sid>hi("javaScriptBraces",      s:gui05,  "", s:cterm05, "", "")
call <sid>hi("javaScriptNumber",      s:gui09,  "", s:cterm09, "", "")
call <sid>hi("javaScriptFuncKeyword", s:gui0E,  "", s:cterm0D, "", "")
call <sid>hi("javaScriptFuncDef",     s:guiCY,  "", s:cterm0D, "", "")
call <sid>hi("javaScriptFuncExp",     s:guiCY,  "", s:cterm0D, "", "")
call <sid>hi("javaScriptIdentifier",  s:gui0A,  "", s:cterm0D, "", "")
call <sid>hi("jsGlobal",              s:guiCY2, "", s:cterm0D, "", "")
call <sid>hi("javascriptAServices",   s:guiCY,  "", s:cterm0D, "", "")

" CoffeeScript
" ---------------------------------------------------------------------------------
call <sid>hi("coffeeBlock", s:gui05, "", s:cterm0D, "", "")
call <sid>hi("coffeeSpecialOp", s:gui05, "", s:cterm0D, "", "")
call <sid>hi("coffeeDollar", s:guiCY2, "", s:cterm0D, "", "")
call <sid>hi("coffeeObjAssign", s:guiCV, "", s:cterm0D, "", "")
call <sid>hi("coffeeNumber", s:gui0A, "", s:cterm0D, "", "")
call <sid>hi("coffeeNumber", s:gui0A, "", s:cterm0D, "", "")

" CoffeeScript Angular
" ---------------------------------------------------------------------------------
call <sid>hi("coffeeAServices", s:guiCY2, "", s:cterm0D, "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              s:cdeGreen, "", s:cterm0B, "", "")
call <sid>hi("markdownCodeBlock",         s:cdeGreen, "", s:cterm0B, "", "")
call <sid>hi("markdownHeadingDelimiter",  s:gui0D, "", s:cterm0D, "", "")

" Git highlighting
call <sid>hi("gitCommitOverflow",  s:cdeRed, "", s:cterm08, "", "")
call <sid>hi("gitCommitSummary",   s:cdeGreen, "", s:cterm0B, "", "")

" Vim Spotify
call <sid>hi("spotifyNote",   s:gui0A,         "", s:cterm0B, "", "")
call <sid>hi("spotifyDelim",  s:gui02,         "", s:cterm0B, "", "")
call <sid>hi("spotifyArtist", s:gui04,         "", s:cterm0B, "", "")
call <sid>hi("spotifySong",   s:gui06,         "", s:cterm0B, "", "")
call <sid>hi("spotifyAlbum",  s:gui04,         "", s:cterm0B, "", "")
call <sid>hi("spotifyHref",   s:cdeBackground, "", s:cterm0B, "", "")
call <sid>hi("spotifyAbout",  s:guiCY,         "", s:cterm0B, "", "")
call <sid>hi("spotifyLength",  s:guiCY,         "", s:cterm0B, "", "")

" Vim HackerNews
call <sid>hi("hnLinkInfo", s:gui03, "", s:cterm0B, "", "")
call <sid>hi("hnHeader", s:gui09, "", s:cterm0B, "", "")
  
" GitGutter highlighting
call <sid>hi("GitGutterAdd",          s:cdeGreen, s:cdeGutter, s:cterm0B, s:cterm02, "")
call <sid>hi("GitGutterChange",       s:gui0C, s:cdeGutter, s:cterm0D, s:cterm02, "")
call <sid>hi("GitGutterDelete",       s:guiER, s:cdeGutter, s:cterm08, s:cterm02, "")
call <sid>hi("GitGutterChangeDelete", s:gui0A, s:cdeGutter, s:cterm08, s:cterm02, "")

" NERDTree highlighting
call <sid>hi("NERDTreeDir",  s:gui0A, "", s:cterm0D, "", "")
call <sid>hi("NERDTreeUp",  s:gui07, "", s:cterm0D, "", "")
call <sid>hi("NERDTreeDirSlash",  s:gui09, "", s:cterm0D, "", "")
call <sid>hi("NERDTreeExecFile",  s:cdeRed, "", s:cterm05, "", "")
call <sid>hi("NERDTreeBookmark",  s:gui02, s:cdeProjects, s:cterm05, "", "")
call <sid>hi("NERDTreeBookmarkName",  s:gui0C, s:cdeProjects, s:cterm05, "", "")
call <sid>hi("NERDTreeBookmarksHeader",  s:gui06, s:gui03, s:cterm05, "", "bevel")
call <sid>hi("NERDTreeBookmarksFooter",  s:gui06, s:gui03, s:cterm05, "", "bevel")
call <sid>hi("NERDTreeBookmarksLeader",  s:cdeGutterText, s:cdeProjects, s:cterm05, "", "")
call <sid>hi("NERDTreeCWD",  s:gui09, "", s:cterm05, "", "")

" Tagbar
call <sid>hi("TagbarScope",  s:gui0A, "", s:cterm0D, "", "")
call <sid>hi("TagbarFoldIcon",  s:gui0A, "", s:cterm0D, "", "")
call <sid>hi("TagbarKind",  s:gui0E, "", s:cterm0D, "", "")

" VimOutliner " {{{
" ------------------------------------------------------------------------ 
" Headings
" ----------------------------------- 
call <sid>hi("OL1", s:gui07, "", "", "", "bold")
call <sid>hi("OL2", s:gui0A, "", "", "", "")
call <sid>hi("OL3", s:guiCY, "", "", "", "")
call <sid>hi("OL4", s:gui0A, "", "", "", "")
call <sid>hi("OL5", s:cdeRed, "", "", "", "")
call <sid>hi("OL6", s:cdeGreen, "", "", "", "")
call <sid>hi("OL7", s:gui0A, "", "", "", "")
call <sid>hi("OL8", s:gui0A, "", "", "", "")
call <sid>hi("OL9", s:gui0A, "", "", "", "")
" Body Text
" ----------------------------------- 
call <sid>hi("BT1", s:gui05, "", "", "", "")
call <sid>hi("BT2", s:gui05, "", "", "", "")
call <sid>hi("BT3", s:gui05, "", "", "", "")
call <sid>hi("BT4", s:gui05, "", "", "", "")
call <sid>hi("BT5", s:gui05, "", "", "", "")
call <sid>hi("BT6", s:gui05, "", "", "", "")
call <sid>hi("BT7", s:gui05, "", "", "", "")
call <sid>hi("BT8", s:gui05, "", "", "", "")
call <sid>hi("BT9", s:gui05, "", "", "", "")
" User Text (Wrapping)
" ----------------------------------- 
call <sid>hi("UT1", s:gui0E, "", "", "", "")
call <sid>hi("UT2", s:gui0E, "", "", "", "")
call <sid>hi("UT3", s:gui0E, "", "", "", "")
call <sid>hi("UT4", s:gui0E, "", "", "", "")
call <sid>hi("UT5", s:gui0E, "", "", "", "")
call <sid>hi("UT6", s:gui0E, "", "", "", "")
call <sid>hi("UT7", s:gui0E, "", "", "", "")
call <sid>hi("UT8", s:gui0E, "", "", "", "")
call <sid>hi("UT9", s:gui0E, "", "", "", "")
" Contact Info
" ----------------------------------- 
call <sid>hi("OLContact", s:guiBY, "", "", "", "")
" CheckBoxes
" ----------------------------------- 
call <sid>hi("OLPending", s:gui02, "", "", "", "")
" Tags
" ----------------------------------- 
call <sid>hi("outlTags", s:gui0E, "", "", "", "")
" URLs
" ----------------------------------- 
" call <sid>hi("OLURL", s:gui0E, "", "", "", "underline")
hi OLURL guifg=#cfa2d6 gui=undercurl guisp=#524254
" }}}

" Syntastic
call <sid>hi("SyntasticErrorSign", s:gui07, s:guiER, s:cterm0B, s:cterm01, "")
call <sid>hi("SyntasticWarningSign", s:cdeRed, s:cdeGutter, s:cterm0A, s:cterm01, "")
hi SpellBad gui=undercurl guisp=#FF6C60
hi SpellCap gui=undercurl guisp=#FF6C60
hi SpellRare gui=undercurl guisp=#FF6C60
hi SpellLocal gui=undercurl guisp=#FF6C60

" Remove functions
delf <sid>hi
delf <sid>gui
delf <sid>cterm

" Remove color variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F
