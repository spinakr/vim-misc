execute pathogen#infect()

"Colors
filetype plugin indent on
set background=dark
colorscheme solarized
syntax enable 

set wildmenu                    "visual autocomplete for command menu

set splitbelow

"Navigation mappings
:imap jk <Esc>
:imap kj <Esc>
nnoremap j gj
nnoremap k gk
:let mapleader = ","

map <S-l> :bn<cr>
map <S-h> :bp<cr>
map <leader>bd :bd<cr>

map <leader>fs :!fsharpi %<CR>

"disable continues syntax check
let g:syntastic_fsharp_checkers = ['']
"let g:fsharp_only_check_errors_on_write = 1

:set tabstop=4
:set shiftwidth=4
:set expandtab

set number                      "show line numbers
set showcmd                     "show command in bottom bar
set cursorline                  "highlight current line
set showmatch                   "highlight matching [{()}]

set incsearch                   "search as characters are entered
set hlsearch                    "highlight matches
set ignorecase                  "ignore case when searching
"turn off search highlight
map <silent> <leader><cr> :noh<cr>

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" save session, reopens with vim -S
nnoremap <leader>s :mksession<CR>

" Make ESC work in CommandT while in terminal Vim
if &term =~ "xterm" || &term =~ "screen"
    let g:CommandTCancelMap=['<ESC>']
end

"Write backups to tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Smart way to move between windows with crtl + hjkl
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Buffer menu
:nnoremap <F5> :buffers<CR>:buffer<Space>

"Nerdtree
map <leader>n :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

