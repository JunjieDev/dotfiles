"=================================================================================
"                                     Airline
"=================================================================================
" Url :                                             https://github.com/vim-airline/vim-airline

"=================================================================================
"                                   Configuration
"=================================================================================
" Enable tabline
let g:airline#extensions#tabline#enable = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_se = ''
let g:airline#extensions#tabline#right_sep= ''
let g:airline#extensions#tabline#right_alt_se = ''

" Enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
"  Url :                                            https://github.com/vim-airline/vim-airline/wiki/Screenshots
"  Command :                                        :AirlineTheme <Theme>
let g:airline_theme = 'badworlf'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

"=================================================================================
"                                     Symbols
"=================================================================================
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = 'Β»'
let g:airline_left_sep = 'βΆ'
let g:airline_right_sep = 'Β«'
let g:airline_right_sep = 'β'
let g:airline_symbols.crypt = 'π'
let g:airline_symbols.linenr = 'β°'
let g:airline_symbols.linenr = 'β'
let g:airline_symbols.linenr = 'β€'
let g:airline_symbols.linenr = 'ΒΆ'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = 'γ'
let g:airline_symbols.branch = 'β'
let g:airline_symbols.paste = 'Ο'
let g:airline_symbols.paste = 'Γ'
let g:airline_symbols.paste = 'β₯'
let g:airline_symbols.spell = 'κ¨'
let g:airline_symbols.notexists = 'Ι'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = 'ξ°'
let g:airline_left_alt_sep = 'ξ±'
let g:airline_right_sep = 'ξ²'
let g:airline_right_alt_sep = 'ξ³'
let g:airline_symbols.branch = 'ξ '
let g:airline_symbols.readonly = 'ξ’'
let g:airline_symbols.linenr = 'β°'
let g:airline_symbols.maxlinenr = 'ξ‘'
