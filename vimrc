set nocompatible
filetype off

"vbundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"bundle list
source ~/.vim/list.vim

filetype plugin indent on
syntax on

"indentation
set autoindent
set smartindent

"tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
au BufRead,BufNewFile Makefile set noexpandtab

"color scheme
colorscheme molokai

"highlighting
set cursorline
set cursorcolumn
set colorcolumn=81

"command-line completion
set wildmenu

"mouse
set mouse=a

"macvim
set guioptions-=L
set guioptions-=r

"direction key remapping for faster movement between windows
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

"insert mode movement
inoremap <C-K> <Up>
inoremap <C-J> <Down>
inoremap <C-H> <Left>
inoremap <C-L> <Right>

"history
set history=1024

"matching
set showmatch
set incsearch
set ignorecase
set smartcase

"write with sudo
cmap w!! w !sudo tee >/dev/null %

"strip trailing spaces
noremap ;s :%s/\s\+//g<CR>

"set comma as leader key
let mapleader=","

"paste
nnoremap <Leader>p :set paste!<CR>

"display invisible characters
nnoremap <Leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

"NERDTree
let NERDTreeIgnore = ['\.o$','\.so','\.pyc$']

"youcompleteme
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_confirm_extra_conf=0
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
nnoremap ;d :YcmCompleter GoToDefinitionElseDeclaration<CR>

"supertab
let g:SuperTabDefaultCompletionType='<C-n>'
let g:SuperTabCrMapping=0

"powerline status
set showcmd
set laststatus=2
set ruler
set nu

"Tagbar
let g:tagbar_width=32
let g:tagbar_autofocus=1

"ctrlp
let g:ctrlp_cmd='CtrlPMRU'
let g:ctrlp_by_filename=1
let g:ctrlp_regexp=1

"easymotion
let g:EasyMotion_leader_key='<Leader>'

"ag grep
let g:ackprg='ag'
nnoremap <Leader>a :Ack

"ultisnips
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

"Rainbow parentheses
nnoremap <Leader>r :RainbowParenthesesToggle<CR>

"delimitMate
let delimitMate_expand_cr=1
let delimitMate_expand_space=1
imap <C-F> <Plug>delimitMateJumpMany

"utility key mapping
nmap <F2> :NERDTreeToggle <CR>
nmap <F3> :TagbarToggle <CR>
nmap <F4> :GundoToggle <CR>
