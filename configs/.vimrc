execute pathogen#infect()
execute pathogen#helptags()

"Colors
filetype plugin indent on
filetype plugin on
set background=dark
colorscheme solarized
syntax enable 

"Navigation mappings
:imap jk <Esc>
:imap kj <Esc>
nnoremap j gj
nnoremap k gk
:let mapleader = ","

map <S-l> :bn<cr>
map <S-h> :bp<cr>
map <leader>bd :bd<cr>
map <leader>bn :bn<cr>
map <leader>bp :bp<cr>

" Smart way to move between windows with crtl + hjkl
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

:set tabstop=4
:set shiftwidth=4
:set expandtab

set number                      "show line numbers
set showcmd                     "show command in bottom bar
set cursorline                  "highlight current line
set showmatch                   "highlight matching [{()}]

"Searchh
map <silent> <leader><cr> :noh<cr>
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <tab> %
vnoremap <tab> %

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
set writebackup
set backupskip=/tmp/*,/private/tmp/*
set backupdir=~/.vim/_backup//  " where to put backup files.
set directory=~/.vim/_temp//    " where to put swap files.

"Nerdtree
map <leader>n :NERDTreeToggle<CR>
map <Leader>v :NERDTreeFind<CR>
let g:airline#extensions#tabline#enabled = 1

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

"Airline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Omnisharp
let g:OmniSharp_server_type = 'roslyn'
let g:OmniSharp_server_path = '/Users/andkof/Bin/omnisharp.http-osx/omnisharp/OmniSharp.exe'
let g:OmniSharp_host = "http://localhost:2000"
let g:OmniSharp_timeout = 1
let g:syntastic_cs_checkers = ['code_checker']

"Omni rename
nnoremap <Leader>rn :OmniSharpRename<CR>
nnoremap <Leader>kd :OmniSharpCodeFormat<CR>
nnoremap <Leader>b :wa!<cr>:OmniSharpBuild<cr>

nnoremap gd :OmniSharpGotoDefinition<cr>
nnoremap fi :OmniSharpFindImplementations<cr>
nnoremap fu :OmniSharpFindUsages<cr>
nnoremap <leader>tt :OmniSharpTypeLookup<cr>

"Syntastic
let g:syntastic_cs_checkers = ['code_checker']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"CtrplP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/packages/**
set wildignore+=*/node_modules/**
nnoremap <Leader>t :CtrlP<CR>

"Javascript
let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1


