set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" ======== PLUGINS ========

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'


" Ctrl+n to trigger
Plugin 'terryma/vim-expand-region'

Plugin 'foldsearch'

Plugin 'kshenoy/vim-signature'
Plugin 'davidhalter/jedi-vim'

Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'

"Fuzzy search
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

Plugin 'nathangrigg/vim-beancount'
Plugin 'mileszs/ack.vim'

"Bundle 'vim-ruby/vim-ruby'
"Plugin 'vim-scripts/CycleColor'
"Bundle 'bilalq/lite-dfm'
"Plugin 'junegunn/goyo.vim'
"Plugin 'tpope/vim-fugitive'
"Plugin 'vim-scripts/Txtfmt-The-Vim-Highlighter'
"Plugin 'slim-template/vim-slim'
Plugin 'junegunn/vim-peekaboo'

Plugin 'easymotion/vim-easymotion'
Plugin 'tomtom/tcomment_vim'
"Plugin 'junegunn/limelight.vim'

Plugin 'tpope/vim-surround'
call vundle#end()            " required
filetype plugin indent on    " required

" ======== SH ========

syntax on
let mapleader = ","
set number "show line numbers
set relativenumber 
set autoindent
set hlsearch
set incsearch
inoremap , ,<Space>

"Moving between splits
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

"Allow positioning cursor where there's no character in all modes
"set virtualedit = "all"

" For the two languages
" Ctrl+^ to switch
 map U :set keymap=ukrainian-dvorak<CR>
 map R :set keymap=russian-dvorak<CR>

" https://stackoverflow.com/questions/9166328/how-to-copy-selected-lines-to-clipboard-in-vim
" To share the clipboard between different vim instances
set clipboard=unnamedplus
set guioptions+=h "make it scroll lower than the visible lines

colorscheme slate

set foldmethod=marker
set foldmarker={{,}}

"====== Mappings =====

map <leader>p :set paste<CR>
map <leader>. :set nopaste<CR>
map <leader>' :quit<CR>
map <leader><leader> :x<CR>

"Insert mode mappings
imap qj <Esc>
imap ;q <Esc>:w<CR>
imap ,, <Esc>:x<CR>
map <leader>s :w<CR>
map ,. :x<CR>
"imap <leader>' ` "What was I thinking?


map ; :
noremap ;; ;

map <leader>d  :put =strftime('%c') <cr>

"Deleting single characters without updating the register: https://stackoverflow.com/questions/1497958/how-do-i-use-vim-registers/7019060#7019060
noremap x "_x


" Tweaks from https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
" Auto read a file when changed from outside
set autoread 

" :W sudo saves the file 
command W w !sudo tee % > /dev/null

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7


" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

set ruler

set cmdheight=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=1
" Add a bit extra margin to the left
set foldcolumn=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
"set lbr
"set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
"vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
"vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

map <leader>ff :setlocal filetype=notes.txtfmt<cr>

" Quickly open a markdown buffer for scribble
"map <leader>x :e ~/buffer.md<cr>

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

" https://hackr.pl/2017/01/11/some-of-my-favorite-vimrc-edits/ 
" Make jk work properly for line wraps
"nnoremap j gj
"nnoremap k gk 

"not in insert mode. To make inserting :Commands easier
nnoremap ; : 

augroup remember_folds
  autocmd!
  autocmd BufWinLeave *.* mkview
  autocmd BufWinEnter *.* loadview
augroup END


" https://superuser.com/questions/249779/how-to-setup-a-line-length-marker-in-vim-gvim
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

set list
set listchars=tab:!·,trail:·

"========== RANDOM ==========
" For illustration purposes
" TODO more
abbr psvm public static void main(String[] args){<CR>}<esc>O

"clear a line 
"nnoremap -c ddO<Return>
"Two enter two times
"nnoremap -s o<Return>
"set backspace=indent,eol,start
"set wildmenu

"Some abbreviations, I should use the n-grama viewer for this, analyzing my ~/n/*.
"   abbr tt that
"   abbr ts this
"   abbr  t  the
"   abbr  a.  and
"   abbr  r  are
"   abbr o of
"
" TEMPORARY MAPPINGS FOR PRAKTIKUMSBERICHT

"abbr IEC Israel Electric Corporation
"abbr SZ Stromzähler
"abbr LF Lastprognose
"abbr ML Maschinelles Lernen
"abbr DB Datenbank
"abbr AD Erkennung von Anomalien

" Let's try something with spellcheck
map zr z=1<CR><CR>

"for anki-vim and latex
abbr nla [$][/$]<esc>hhhi
abbr nbr \overline{}<esc>i

" Let's try again with nice insert mode mappings
" todo: ankify
imap <F2>d <esc>:put =strftime('%c')<cr>kJA
imap <F12>d <esc>:put =strftime('%c')<cr>kJA
" Todo: make the above better and work also in the middle of a line
" todo: Jekkyll header for the day

" Again temporary ones
abbr sop System.out.println("");<esc>2hi
abbr sos System.out.println();<esc>1hi
