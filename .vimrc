call pathogen#infect()
call pathogen#helptags()

syntax on
filetype on
au BufNewFile,BufRead *.tt set filetype=html
au BufNewFile,BufRead *.psgi set filetype=perl

map <F3> :Ack <cword><CR>
map <F8> :TlistToggle<CR>

set mouse=r
set nohlsearch
set number

colorscheme zenburn

"vim thinks it only has 8 colours in iterm/osx
let &t_Co=256

"Macs are such gentle creatures; they need to be handled with care :-)
set backspace=indent,eol,start

set wildignore+=*.pyc

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

let g:ctrlp_custom_ignore = 'vendor/'
let g:ctrlp_working_path_mode = ''

map <leader>jt <Esc>:%!json_xs -f json -t json-pretty<CR>

" tab = 4 spaces!
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Show tab characters. Visual Whitespace.
set list
set listchars=tab:>-,trail:-

" perltidy
set equalprg=perltidy

" my perl includes pod
let perl_include_pod = 1

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

let perl_want_scope_in_variables = 1

" ctags
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50

" make tab in v mode ident code
vmap <tab> >gv
vmap <s-tab> <gv

" Use the below highlight group when displaying bad whitespace is desired
highlight BadWhitespace ctermbg=red guibg=red
" Display tabs at the beginning of a line in Python mode as bad.
match BadWhitespace /^\s\+/
" Make trailing whitespace be flagged as bad
match BadWhitespace /\s\+$/

set wildmenu

filetype plugin on

autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype haml setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd BufRead,BufNewFile *.scss setlocal ts=2 sts=2 sw=2
autocmd BufRead,BufNewFile *.erb setlocal ts=2 sts=2 sw=2
