filetype plugin on

execute pathogen#infect()
:set omnifunc=syntaxcomplete#Complete

:let g:Powerline_symbols = 'fancy'

" air-line
:let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
:let g:airline_left_sep = '»'
:let g:airline_left_sep = '▶'
:let g:airline_right_sep = '«'
:let g:airline_right_sep = '◀'
:let g:airline_symbols.linenr = '␊'
:let g:airline_symbols.linenr = '␤'
:let g:airline_symbols.linenr = '¶'
:let g:airline_symbols.branch = '⎇'
:let g:airline_symbols.paste = 'ρ'
:let g:airline_symbols.paste = 'Þ'
:let g:airline_symbols.paste = '∥'
:let g:airline_symbols.whitespace = 'Ξ'
" airline symbols
:let g:airline_left_sep = ''
:let g:airline_left_alt_sep = ''
:let g:airline_right_sep = ''
:let g:airline_right_alt_sep = ''
:let g:airline_symbols.branch = ''
:let g:airline_symbols.readonly = ''
:let g:airline_symbols.linenr = ''
:let g:airline_theme='badwolf'

:set statusline+=%#warningmsg#
:set statusline+=%{SyntasticStatuslineFlag()}
:set statusline+=%*
:let g:syntastic_always_populate_loc_list = 1
:let g:syntastic_auto_loc_list = 1
:let g:syntastic_check_on_open = 1
:let g:syntastic_check_on_wq = 0

:set smartcase
:set number
:set mouse=a
:set background=light
:set backupcopy=auto
:set autoindent
:set smartindent
:set shiftwidth=4
:set softtabstop=0
:set tabstop=4
:set noexpandtab
:set preserveindent
:set copyindent
:set noet ci pi sts=0 sw=4 ts=4
:set expandtab ts=4 sw=4 ai
:set backup
:syntax on
:set backupdir=/tmp
:set directory=/tmp
:silent execute '@rm "'.$VIMRUNTIME.'\temp\*~"'
:tab 
:set showtabline=2

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTree<CR>
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

autocmd FileType mail set formatoptions+=t textwidth=72 " enable wrapping in mail
autocmd FileType human set formatoptions-=t textwidth=0 " disable wrapping in txt
autocmd FileType c,cpp,java set formatoptions+=ro
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType html,xhtml,css,xml,xslt set shiftwidth=2 softtabstop=2
autocmd FileType vim,lua,nginx set shiftwidth=2 softtabstop=2
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xhtml,html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType python set formatoptions+=ro
autocmd FileType asm set noexpandtab shiftwidth=8 softtabstop=0 syntax=nasm

autocmd BufEnter * let &titlestring = hostname() . "[vim(" . expand("%:t") . ")]"
:set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername}
if &term == "screen"
  let &titlestring=expand("%:t")
  set t_ts="\ek"
  set t_fs="\e\\"
  set title
endif

au BufNewFile,BufRead,BufEnter *.cpp,*.hpp,*.cc,*.hh set omnifunc=omni#cpp#complete#Main
au BufRead,BufNewFile *.cerr set filetype=myerror
au BufRead,BufNewFile *.qml set filetype=javascript
au BufRead,BufNewFile *.js set filetype=javascript
au BufRead,BufNewFile *.xul set filetype=html

au Syntax myerror source $HOME/.vim/cerr.vim

:set list listchars=tab:»»,trail:·,extends:»,precedes:«,nbsp:×

" default Theme
filetype plugin indent on
colorscheme gruvbox
colo gruvbox
:hi Normal ctermbg=none
set background=dark

:au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', 22)
:set textwidth=80
:set colorcolumn=80
:hi ColorColumn ctermbg=0 ctermfg=2 guibg=#900000 guifg=yellow
:let &colorcolumn=join(range(80,80),",")

:set tags=~/.local/share/tags,.,.tags,./tags
