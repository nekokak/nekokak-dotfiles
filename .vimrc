
set nocompatible " must be first!

colorscheme darkblue
" darkblue
" set color of completion list
" http://d.hatena.ne.jp/secondlife/20051019/1129655473
hi Pmenu ctermbg=8
hi PmenuSel ctermbg=12
hi PmenuSbar ctermbg=0

" set omnifunc=syntaxcomplete#Complete

" colorscheme darkblue

nnoremap j gj
nnoremap k gk
set expandtab
set shiftround
set autoindent
set backspace=indent,eol,start
set encoding=utf-8
"set fileencoding=euc-jp
set fileencoding=utf-8
set hidden
set history=50
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nobackup
set ruler
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set tabstop=4
set wrapscan
syntax on
autocmd CursorHold * update
set updatetime=500
"set fileencoding=japan
"set fileencodings=euc-jp,iso-2022-jp,utf-8,ucs-2le,ucs-2,cp932
"set fileencodings=utf-8,iso-2022-jp,euc-jp,cp932,ucs-2le,ucs-2
set fileencodings=utf-8,iso-2022-jp,euc-jp,cp932
"set fileencodings=utf-8,euc-jp,iso-2022-jp,ucs-2le,ucs-2,cp932
highlight TAB cterm=underline ctermfg=lightblue guibg=white
match TAB /	/
"set mouse=a

" -------------------------------------------------------------------------
" 入力補完
"
" -------------------------------------------------------------------------
    inoremap ,date <C-R>=strftime("%a %b %d %T %Y")<CR>
    inoremap ,self <C-R> my $self = shift;<CR>
    inoremap ,xxx  <C-R> use XXX;XXX Dumper(<CR>);<CR>
    iabbrev ,# # -------------------------------------------------------------------------

" -------------------------------------------------------------------------
" perl test
"
" -------------------------------------------------------------------------
    augroup filetypedetect
    autocmd! BufNewFile,BufRead *.t setf perl
    augroup END

" -------------------------------------------------------------------------
" minibufexpl.vim の設定
"
" -------------------------------------------------------------------------
    let g:miniBufExplMapWindowNavVim = 1
    let g:miniBufExplMapWindowNavArrows = 1
    let g:miniBufExplMapCTabSwitchBuffs = 1

" -------------------------------------------------------------------------
" 自動cd
" ref. http://nanasi.jp/articles/vim/cd_vim.html
"
" -------------------------------------------------------------------------
"    au BufEnter * execute ":lcd " . expand("%:p:h")

" -------------------------------------------------------------------------
" ChangeLog
"
" -------------------------------------------------------------------------
    let g:changelog_username = 'nekokak <nekokak@gmail.com>'

" -------------------------------------------------------------------------
" matchit
" ref. http://nanasi.jp/articles/vim/matchit_vim.html
"
" -------------------------------------------------------------------------
    source $VIMRUNTIME/macros/matchit.vim

" -------------------------------------------------------------------------
" PERL HACKS!
"
" -------------------------------------------------------------------------
    map ,pt  <Esc>:%! perltidy<CR>
    map ,ptv <Esc>:'<,'>! perltidy<CR>

" lhs comments
vmap ,# :s/^/#/<CR>:nohlsearch<CR>
vmap ,/ :s/^/\/\//<CR>:nohlsearch<CR>
vmap ,> :s/^/> /<CR>:nohlsearch<CR>
vmap ," :s/^/\"/<CR>:nohlsearch<CR>
vmap ,% :s/^/%/<CR>:nohlsearch<CR>
vmap ,! :s/^/!/<CR>:nohlsearch<CR>
vmap ,; :s/^/;/<CR>:nohlsearch<CR>
vmap ,- :s/^/--/<CR>:nohlsearch<CR>
vmap ,c :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>:nohlsearch<CR>

" wrapping comments
vmap ,* :s/^\(.*\)$/\/\* \1 \*\//<CR>:nohlsearch<CR>
vmap ,( :s/^\(.*\)$/\(\* \1 \*\)/<CR>:nohlsearch<CR>
vmap ,< :s/^\(.*\)$/<!-- \1 -->/<CR>:nohlsearch<CR>
vmap ,d :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<CR>:nohlsearch<CR>

" block comments
vmap ,b v`<I<CR><esc>k0i/*<ESC>`>j0i*/<CR><esc><ESC>
vmap ,h v`<I<CR><esc>k0i<!--<ESC>`>j0i--><CR><esc><ESC>

