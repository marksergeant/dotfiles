
set nocompatible              " be iMproved, required
filetype off                  " required
set autoindent
set background=dark
set backspace=indent,eol,start
set hlsearch
set incsearch
set nocompatible
set number
set pastetoggle=<F2>
set ruler
set showcmd
set showmatch
set smartindent
set sw=4
set ts=4
set mouse=a

" Copy & Paste
set clipboard=unnamedplus,unnamed,autoselect
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

set t_Co=256
set t_ut=
syntax on
set modeline
set modelines=5
set laststatus=2
syn sync fromstart
map <F3> mzgg=G'z<CR> 
map <F5> :setlocal spell! spelllang=en_gb<CR>
if has("autocmd")
	filetype plugin indent on
	autocmd FileType text setlocal textwidth=78
	autocmd BufReadPost *
				\ if line("'\"") > 0 && line("'\"") <= line("$") |
				\   exe "normal g`\"" |
				\ endif
endif " has("autocmd")
autocmd BufNewFile,BufRead *.pl compiler perl
autocmd BufNewFile,BufRead *.pl map <F1> :Perldoc<CR>
autocmd BufNewFile,BufRead *.pl setf perl
autocmd BufNewFile,BufRead *.pl let g:perldoc_program='/usr/bin/perldoc'
set t_kb=
set shortmess=filnxtToOI

let g:lightline = {
			\ 'colorscheme': 'wombat',
			\ }

let g:airline_theme='base16_chalk'

" pathogen
execute pathogen#infect('bundle/{}')
execute pathogen#helptags()

if has('gui_running')
	set background=dark
	" colorscheme base16-dphase
	let g:seoul256_background = 234
	colorscheme seoul256
else
	set background=dark
	"colorscheme sg
	colorscheme paramount
endif

" persistent undo
set undodir=~/.vim/undodir
set undofile

" backup dir
set backupdir=~/.vim/sessions
set dir=~/.vim/sessions

" session
set ssop-=options

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_balloons=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_highlighting=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5
let g:syntastic_aggregate_errors=1
let g:syntastic_id_checkers=1
let g:syntastic_python_checkers=['python', 'pyflakes']
"Enable below in case you want the error line highlighted
"highlight SyntasticErrorLine guibg=#6D6968
"highlight SyntasticWarningLine guibg=#6D6968
"Sytanstic Error Signs"
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol="E>"
let g:syntastic_warning_symbol="W>"
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'podchecker']
let g:syntastic_perl_perlcritic_post_args =
			\ '--verbose "\%s:\%f:\%l:\%c: \%p: \%m\n"'

" Ctrl P
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" NerdTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:nerdtree_tabs_open_on_console_startup = 1
" vi:set ts=4 sw=4: "
