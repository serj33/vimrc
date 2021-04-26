call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf.vim'

Plug 'w0rp/ale'
Plug 'Townk/vim-autoclose'

"Plug 'SirVer/ultisnips' track engine
"Plug 'honza/vim-snippets'

Plug 'fs111/pydoc.vim'

Plug 'rust-lang/rust.vim' "rust support
Plug 'racer-rust/vim-racer' "rust autocomplete
Plug 'rhysd/rust-doc.vim'

Plug 'idanarye/vim-vebugger'
Plug 'Shougo/vimproc.vim' "interactive async command execution

call plug#end()

colorscheme desert

syntax on
filetype plugin indent on

set nocompatible
set hidden "opening a new file when the current buffer has unsaved changes causes files to be hidden instead of closed
set number
set nobackup
set ignorecase
set incsearch
set wildmenu
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set laststatus=2
set mouse=a
set backupdir-=.
set backupdir^=~/tmp,/tmp

let g:airline#extensions#tabline#enabled = 1
let g:pydoc_window_lines=20

"let g:UltiSnipsExpandTrigger='<leader>t'

let g:vebugger_leader='<leader>d'
let g:vebugger_path_gdb = 'gdb'
let g:vebugger_breakpoint_text='#'
let g:vebugger_currentline_text='->'

let $FZF_DEFAULT_COMMAND='rg --files --hidden --no-ignore-vcs --vimgrep'
let $FZF_DEFAULT_OPTS='-m --height 25% --border'

noremap <silent> <C-p> :NERDTreeToggle<CR>
noremap <silent> <C-t> :FZF<CR>
noremap <C-f> :Files

noremap <silent> <C-Left> :bprevious<CR>
noremap <silent> <C-Right> :bnext<CR>

noremap <C-e> :enew<cr>
noremap <leader>bq :bp <BAR> bd #<CR>
noremap <C-d> :bp <BAR> bd #<CR>
"noremap <C-q> :bp <BAR> bd #<CR>

autocmd BufWinEnter *.py nnoremap <F3> :w<CR>:!python3 %:p<CR>

nnoremap <leader>dG :VBGstartGDB
nnoremap <leader>dP :VBGstartPDB3
nnoremap <leader>dL :VBGstartLLDB

nnoremap <leader><C-g> :VBGstartGDB
nnoremap <leader><C-p> :VBGstartPDB3
nnoremap <leader><C-l> :VBGstartLLDB

nnoremap <F5> :VBGcontinue<CR>
nnoremap <S-F5> :VBGkill<CR>
nnoremap <F6> :VBGevalWordUnderCursor<CR>
nnoremap <F9> :VBGtoggleBreakpointThisLine<CR>
nnoremap <F10> :VBGclearBreakpoints<CR>
