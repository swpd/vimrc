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
"set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"set color
set t_Co=256
"set background=dark

"color scheme
"let g:solarized_termtrans = 1
"let g:solarized_termcolors = 256
"colorscheme solarized
"colorscheme Tomorrow-Night-Eighties
"colorscheme Monokai
"colorscheme jellybeans
colorscheme molokai
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,ColorScheme * :hi IndentGuidesEven ctermbg=239
autocmd VimEnter,ColorScheme * :hi IndentGuidesOdd  ctermbg=235

set cursorline
set cursorcolumn
set colorcolumn=81

"mouse
set mouse=a

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

"gui font
set guifont=Monaco\ Bold\ 10

"history
set history=1024

"matching
set showmatch
set smartcase
set incsearch
set ignorecase

"powerline status
set showcmd
set laststatus=2
set ruler
set nu

"Tagbar
let g:tagbar_width=32
let g:tagbar_autofocus=1

"neocomplcache
let g:neocomplcache_enable_at_startup=1
if !exists('g:neocomplcache_force_omni_patterns')
    let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_overwrite_completefunc=1
let g:neocomplcache_force_omni_patterns.c =
            \ '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp =
            \ '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=3
let g:neocomplcache_lock_buffer_name_pattern="\*ku\*"
set completeopt-=preview

"clang_complete
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
let g:clang_use_library = 1

"cscope
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

"cscope mapping
nmap ;s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap ;g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap ;c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap ;t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap ;e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap ;f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap ;i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap ;d :cs find d <C-R>=expand("<cword>")<CR><CR>

"utility key mapping
nmap <F2> :NERDTreeToggle <CR>
nmap <F3> :TagbarToggle <CR>
nmap <F4> :GundoToggle <CR>

au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au BufRead,BufNewFile Makefile set noexpandtab
let javascript_enable_domhtmlcss = 1

"omnicompletion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

"jedi
let g:jedi#auto_vim_configuration=0

"nasm
au BufRead,BufNewFile *.nasm set ft=nasm

"write with sudo
cmap w!! w !sudo tee >/dev/null %

let mapleader=","
nnoremap <Leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

"cd to the current buffer's directory
nnoremap <Leader>cd :cd %:p:h<CR>

"ctrlp
let g:ctrlp_cmd='CtrlPMRU'
let g:ctrlp_by_filename=1
let g:ctrlp_regexp=1

"easymotion
let g:EasyMotion_leader_key='<Leader>'

"ack grep
nnoremap <Leader>a :Ack 

"Rainbow parentheses
nnoremap <Leader>r :RainbowParenthesesToggle<CR>

"syntastic
let g:syntastic_auto_loc_list=1
