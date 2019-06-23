" Vim color file
" Converted from Textmate theme Twilight using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vwilight"

hi Cursor                       ctermfg=NONE ctermbg=248  cterm=NONE         guifg=NONE    guibg=#a7a7a7 gui=NONE
hi Visual                       ctermfg=NONE ctermbg=59   cterm=NONE         guifg=NONE    guibg=#3c4043 gui=NONE
hi LineNr                       ctermfg=245  ctermbg=NONE cterm=NONE         guifg=#868686 guibg=NONE    gui=NONE
hi SignColumn                   ctermfg=14   ctermbg=NONE cterm=NONE         guifg=Cyan    guibg=NONE    gui=NONE
hi CursorLine                   ctermfg=NONE ctermbg=235  cterm=NONE         guifg=NONE    guibg=#2b2b2b gui=NONE
hi CursorLineNr                 ctermfg=245  ctermbg=235  cterm=NONE         guifg=#868686 guibg=#2b2b2b gui=NONE
hi CursorColumn                 ctermfg=NONE ctermbg=235  cterm=NONE         guifg=NONE    guibg=#2b2b2b gui=NONE
hi ColorColumn                  ctermfg=NONE ctermbg=235  cterm=NONE         guifg=NONE    guibg=#2b2b2b gui=NONE
hi VertSplit                    ctermfg=240  ctermbg=240  cterm=NONE         guifg=#565656 guibg=#565656 gui=NONE
hi MatchParen                   ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
hi StatusLine                   ctermfg=231  ctermbg=240  cterm=bold         guifg=#f8f8f8 guibg=#565656 gui=bold
hi StatusLineNC                 ctermfg=231  ctermbg=240  cterm=NONE         guifg=#f8f8f8 guibg=#565656 gui=NONE
hi Pmenu                        ctermfg=95   ctermbg=NONE cterm=NONE         guifg=#9b703f guibg=NONE    gui=NONE
hi PmenuSel                     ctermfg=NONE ctermbg=59   cterm=NONE         guifg=NONE    guibg=#3c4043 gui=NONE
hi IncSearch                    ctermfg=NONE ctermbg=59   cterm=NONE         guifg=NONE    guibg=#343a44 gui=NONE
hi Search                       ctermfg=NONE ctermbg=59   cterm=NONE         guifg=NONE    guibg=#343a44 gui=NONE
hi Directory                    ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi Folded                       ctermfg=59   ctermbg=233  cterm=NONE         guifg=#5f5a60 guibg=#141414 gui=NONE
hi TabLineFill                  ctermfg=NONE ctermbg=234  cterm=NONE         guifg=NONE    guibg=#1f1f1f gui=NONE
hi TabLine                      ctermfg=NONE ctermbg=234  cterm=NONE         guifg=NONE    guibg=#1f1f1f gui=NONE
hi TabLineSel                   ctermfg=NONE ctermbg=59   cterm=bold         guifg=NONE    guibg=#3c4043 gui=NONE
hi NonText                      ctermfg=239  ctermbg=234  cterm=NONE         guifg=#4f4f4f guibg=#1f1f1f gui=NONE
hi Title                        ctermfg=231  ctermbg=NONE cterm=bold         guifg=#f8f8f8 guibg=NONE    gui=bold
hi Underlined                   ctermfg=NONE ctermbg=NONE cterm=underline    guifg=NONE    guibg=NONE    gui=underline

hi Normal                       ctermfg=231  ctermbg=234  cterm=NONE         guifg=#f8f8f8 guibg=#1f1f1f gui=NONE
hi Comment                      ctermfg=242  ctermbg=NONE cterm=NONE         guifg=#5f5a60 guibg=NONE    gui=italic
hi Boolean                      ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi Character                    ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi Number                       ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi Float                        ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi Function                     ctermfg=95   ctermbg=NONE cterm=NONE         guifg=#9b703f guibg=NONE    gui=NONE
hi Constant                     ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
hi Identifier                   ctermfg=228  ctermbg=NONE cterm=NONE         guifg=#f9ee98 guibg=NONE    gui=NONE
hi Keyword                      ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
hi Structure                    ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
hi Exception                    ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
hi ErrorMsg                     ctermfg=NONE ctermbg=NONE cterm=NONE         guifg=NONE    guibg=NONE    gui=NONE
hi WarningMsg                   ctermfg=NONE ctermbg=167  cterm=NONE         guifg=NONE    guibg=#cf6a4c gui=NONE
hi Label                        ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
hi Operator                     ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
hi PreProc                      ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
hi Special                      ctermfg=231  ctermbg=NONE cterm=NONE         guifg=#f8f8f8 guibg=NONE    gui=NONE
hi SpecialKey                   ctermfg=239  ctermbg=235  cterm=NONE         guifg=#4f4f4f guibg=#2b2b2b gui=NONE
hi Statement                    ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
hi StorageClass                 ctermfg=228  ctermbg=NONE cterm=NONE         guifg=#f9ee98 guibg=NONE    gui=NONE
hi String                       ctermfg=107  ctermbg=NONE cterm=NONE         guifg=#8f9d6a guibg=NONE    gui=NONE
hi Tag                          ctermfg=95   ctermbg=NONE cterm=NONE         guifg=#9b703f guibg=NONE    gui=NONE
hi Todo                         ctermfg=59   ctermbg=NONE cterm=inverse,bold guifg=#5f5a60 guibg=NONE    gui=inverse,bold,italic
hi Type                         ctermfg=95   ctermbg=NONE cterm=NONE         guifg=#9b703f guibg=NONE    gui=NONE

" Spelling
hi SpellBad                     ctermfg=NONE ctermbg=NONE cterm=underline    guifg=NONE    guibg=NONE    gui=undercurl
hi SpellCap                     ctermfg=NONE ctermbg=NONE cterm=underline    guifg=NONE    guibg=NONE    gui=undercurl
hi SpellLocal                   ctermfg=NONE ctermbg=NONE cterm=NONE         guifg=NONE    guibg=NONE    gui=NONE
hi SpellRare                    ctermfg=NONE ctermbg=NONE cterm=NONE         guifg=NONE    guibg=NONE    gui=NONE

" Vim
hi vimVar                       ctermfg=228  ctermbg=NONE cterm=NONE         guifg=#f9ee98 guibg=NONE    gui=NONE
hi vimSynCase                   ctermfg=228  ctermbg=NONE cterm=NONE         guifg=#f9ee98 guibg=NONE    gui=NONE

" Ruby
hi rubyConstant                 ctermfg=139  ctermbg=NONE cterm=NONE         guifg=#af87af guibg=NONE    gui=NONE
hi rubySymbol                   ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi rubyStringDelimiter          ctermfg=107  ctermbg=NONE cterm=NONE         guifg=#8f9d6a guibg=NONE    gui=NONE
hi rubyPredefinedIdentifier     ctermfg=186  ctermbg=NONE cterm=NONE         guifg=#dad085 guibg=NONE    gui=NONE
hi rubyInstanceVariable         ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
hi rubyClassVariable            ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
hi rubyGlobalVariable           ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
hi rubyBlockParameter           ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
hi rubyRegexp                   ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#e9c062 guibg=NONE    gui=NONE
hi rubyRegexpDelimiter          ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#e9c062 guibg=NONE    gui=NONE

" Rails
hi railsClass                   ctermfg=139  ctermbg=NONE cterm=NONE         guifg=#af87af guibg=NONE    gui=NONE
hi railsMethod                  ctermfg=186  ctermbg=NONE cterm=NONE         guifg=#dad085 guibg=NONE    gui=NONE

" HTML
hi htmlTag                      ctermfg=137  ctermbg=NONE cterm=NONE         guifg=#ac885b guibg=NONE    gui=NONE
hi htmlEndTag                   ctermfg=137  ctermbg=NONE cterm=NONE         guifg=#ac885b guibg=NONE    gui=NONE
hi htmlTagName                  ctermfg=137  ctermbg=NONE cterm=NONE         guifg=#ac885b guibg=NONE    gui=NONE
hi htmlArg                      ctermfg=137  ctermbg=NONE cterm=NONE         guifg=#ac885b guibg=NONE    gui=NONE
hi htmlSpecialChar              ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE

" JavaScript
hi javaScriptFunction           ctermfg=228  ctermbg=NONE cterm=NONE         guifg=#f9ee98 guibg=NONE    gui=NONE
hi javaScriptRailsFunction      ctermfg=186  ctermbg=NONE cterm=NONE         guifg=#dad085 guibg=NONE    gui=NONE
hi javaScriptBraces             ctermfg=NONE ctermbg=NONE cterm=NONE         guifg=NONE    guibg=NONE    gui=NONE

" CoffeeScript
hi coffeeObjAssign              ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi coffeeObject                 ctermfg=139  ctermbg=NONE cterm=NONE         guifg=#af87af guibg=NONE    gui=NONE
hi coffeeGlobal                 ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
hi coffeeConstant               ctermfg=228  ctermbg=NONE cterm=NONE         guifg=#f9ee98 guibg=NONE    gui=NONE
hi coffeeRegex                  ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#e9c062 guibg=NONE    gui=NONE
hi coffeeSpecialIdent           ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE

" YAML
hi yamlKey                      ctermfg=95   ctermbg=NONE cterm=NONE         guifg=#9b703f guibg=NONE    gui=NONE
hi yamlAnchor                   ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
hi yamlAlias                    ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
hi yamlDocumentHeader           ctermfg=107  ctermbg=NONE cterm=NONE         guifg=#8f9d6a guibg=NONE    gui=NONE

" CSS
hi cssURL                       ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
hi cssFunctionName              ctermfg=186  ctermbg=NONE cterm=NONE         guifg=#dad085 guibg=NONE    gui=NONE
hi cssColor                     ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi cssPseudoClassId             ctermfg=95   ctermbg=NONE cterm=NONE         guifg=#9b703f guibg=NONE    gui=NONE
hi cssClassName                 ctermfg=95   ctermbg=NONE cterm=NONE         guifg=#9b703f guibg=NONE    gui=NONE
hi cssValueLength               ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi cssCommonAttr                ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi cssBraces                    ctermfg=NONE ctermbg=NONE cterm=NONE         guifg=NONE    guibg=NONE    gui=NONE

" diff files
hi diffAdded                    ctermfg=107  ctermbg=NONE cterm=NONE         guifg=#8f9d6a guibg=NONE    gui=NONE
hi diffRemoved                  ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE

" vimdiff
hi diffAdd                      ctermfg=231  ctermbg=107  cterm=NONE         guifg=#f8f8f8 guibg=#8f9d6a gui=NONE
hi diffDelete                   ctermfg=231  ctermbg=167  cterm=NONE         guifg=#f8f8f8 guibg=#cf6a4c gui=NONE
hi diffChange                   ctermfg=231  ctermbg=103  cterm=NONE         guifg=#f8f8f8 guibg=#7587a6 gui=NONE
hi diffText                     ctermfg=231  ctermbg=139  cterm=NONE         guifg=#f8f8f8 guibg=#af87af gui=NONE

" Git status window
hi gitCommitUntrackedFile       ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE
hi gitCommitDiscardedFile       ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi gitCommitDiscardedArrow      ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi gitCommitDiscardedType       ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi gitCommitUnmergedFile        ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi gitCommitUnmergedArrow       ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi gitCommitUnmergedType        ctermfg=167  ctermbg=NONE cterm=NONE         guifg=#cf6a4c guibg=NONE    gui=NONE
hi gitCommitSelectedFile        ctermfg=107  ctermbg=NONE cterm=NONE         guifg=#8f9d6a guibg=NONE    gui=NONE
hi gitCommitSelectedArrow       ctermfg=107  ctermbg=NONE cterm=NONE         guifg=#8f9d6a guibg=NONE    gui=NONE
hi gitCommitSelectedType        ctermfg=107  ctermbg=NONE cterm=NONE         guifg=#8f9d6a guibg=NONE    gui=NONE

" C/C++
hi cType                        ctermfg=139  ctermbg=NONE cterm=NONE         guifg=#af87af guibg=NONE    gui=NONE
hi cppType                      ctermfg=139  ctermbg=NONE cterm=NONE         guifg=#af87af guibg=NONE    gui=NONE

" Java
hi javaType                     ctermfg=139  ctermbg=NONE cterm=NONE         guifg=#af87af guibg=NONE    gui=NONE
hi javaClassDecl                ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
hi javaTypeDef                  ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE

" Cucumber
hi cucumberTags                 ctermfg=103  ctermbg=NONE cterm=NONE         guifg=#7587a6 guibg=NONE    gui=NONE

" SQL
hi sqlKeyword                   ctermfg=179  ctermbg=NONE cterm=NONE         guifg=#cda869 guibg=NONE    gui=NONE
hi Quote                        ctermfg=107  ctermbg=NONE cterm=NONE         guifg=#8f9d6a guibg=NONE    gui=NONE
