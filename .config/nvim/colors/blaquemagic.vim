 
" ┏┓ ╻  ┏━┓┏━┓╻ ╻┏━╸   ┏┳┓┏━┓┏━╸╻┏━╸╻┏ 
" ┣┻┓┃  ┣━┫┃┓┃┃ ┃┣╸    ┃┃┃┣━┫┃╺┓┃┃  ┣┻┓
" ┗━┛┗━╸╹ ╹┗┻┛┗━┛┗━╸   ╹ ╹╹ ╹┗━┛╹┗━╸╹ ╹
" blaque magick by xero harrison (http://blaquemagick.xero.nu)

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="blaquemagick"

hi ColorColumn  term=NONE cterm=NONE ctermfg=NONE ctermbg=black
hi Comment      term=NONE cterm=NONE ctermfg=239  ctermbg=NONE
hi Constant     term=NONE cterm=NONE ctermfg=101  ctermbg=NONE
hi Cursor       term=NONE cterm=NONE ctermfg=242  ctermbg=NONE
hi CursorLine   term=NONE cterm=NONE ctermfg=NONE ctermbg=black
hi DiffAdd      term=NONE cterm=NONE ctermfg=103  ctermbg=NONE
hi DiffChange   term=NONE cterm=NONE ctermfg=NONE ctermbg=16
hi DiffDelete   term=NONE cterm=NONE ctermfg=251  ctermbg=16
hi DiffText     term=NONE cterm=NONE ctermfg=251  ctermbg=101
hi Directory    term=NONE cterm=NONE ctermfg=101  ctermbg=16
hi Error        term=NONE cterm=NONE ctermfg=238  ctermbg=red
hi ErrorMsg     term=NONE cterm=NONE ctermfg=red   ctermbg=16
hi FoldColumn   term=NONE cterm=NONE ctermfg=238  ctermbg=NONE
hi Folded       term=NONE cterm=NONE ctermfg=238  ctermbg=NONE
hi Function     term=NONE cterm=NONE ctermfg=251  ctermbg=NONE
hi Identifier   term=NONE cterm=NONE ctermfg=red   ctermbg=NONE
hi IncSearch    term=NONE cterm=NONE ctermfg=247  ctermbg=247
hi NonText      term=NONE cterm=NONE ctermfg=236  ctermbg=NONE
hi Normal       term=NONE cterm=NONE ctermfg=249  ctermbg=NONE
hi PreProc      term=NONE cterm=NONE ctermfg=magenta   ctermbg=NONE
hi Search       term=NONE cterm=NONE ctermfg=251  ctermbg=247
hi Special      term=NONE cterm=NONE ctermfg=red   ctermbg=NONE
hi SpecialKey   term=NONE cterm=NONE ctermfg=101  ctermbg=NONE
hi Statement    term=NONE cterm=NONE ctermfg=251  ctermbg=NONE
hi StatusLine   term=NONE cterm=NONE ctermfg=238  ctermbg=NONE
hi StatusLineNC term=NONE cterm=NONE ctermfg=236  ctermbg=NONE
hi String       term=NONE cterm=NONE ctermfg=magenta   ctermbg=NONE
hi TabLineSel   term=NONE cterm=NONE ctermfg=251  ctermbg=NONE
hi Todo         term=NONE cterm=NONE ctermfg=251  ctermbg=red
hi Type         term=NONE cterm=NONE ctermfg=242  ctermbg=NONE
hi VertSplit    term=NONE cterm=NONE ctermfg=239  ctermbg=234
hi Visual       term=NONE cterm=NONE ctermfg=16   ctermbg=101
hi WarningMsg   term=NONE cterm=NONE ctermfg=103  ctermbg=NONE
hi LineNr       term=NONE cterm=NONE ctermbg=234  ctermfg=237
hi CursorLineNr term=NONE cterm=NONE ctermbg=237  ctermfg=16
hi Pmenu        term=NONE cterm=NONE ctermfg=249  ctermbg=16
hi PmenuSel     term=NONE cterm=NONE ctermfg=238  ctermbg=66
hi PmenuSbar    term=NONE cterm=NONE ctermfg=238  ctermbg=66
hi PmenuThumb   term=NONE cterm=NONE ctermfg=238  ctermbg=66
hi Underlined   term=underline cterm=underline ctermfg=NONE   ctermbg=NONE

hi! link diffAdded       DiffAdd
hi! link diffRemoved     DiffDelete
hi! link diffChanged     DiffChange
hi! link StatusLineNC    StatusLine
hi! link Title           Normal
hi! link MoreMsg         Normal
hi! link Question        DiffChange
hi! link TabLine         StatusLineNC
hi! link TabLineFill     StatusLineNC
hi! link VimHiGroup      VimGroup
