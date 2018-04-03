execute pathogen#infect()
execute pathogen#helptags()

"Colors
filetype plugin indent on
filetype plugin on
set background=dark
colorscheme solarized
syntax enable 
set backspace=2
set backspace=indent,eol,start

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

:set tabstop=2
:set shiftwidth=2
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

"Airline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Syntastic
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
set wildignore+=*/octopacked/**
set wildignore+=*/artifacts/**
set wildignore+=*/logs/**
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['package.json']
nnoremap <Leader>t :CtrlP<CR>


"Javascript
let g:javascript_plugin_flow = 1

"Emmet (html sxpansion)
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends': 'jsx',
\      'quote_char': "'",
\  },
\}

"Ale linter
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

