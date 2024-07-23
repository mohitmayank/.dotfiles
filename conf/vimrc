:set incsearch
:set nu
:set expandtab
:set tabstop=2
:set shiftwidth=2
:set sts=2
:set autoindent
:set smartindent
:syn on
:set noswapfile
:set hlsearch
set mouse=a
set wrap
set linebreak

set list
set listchars+=tab:┊\ 
set listchars+=eol:\ 
"set listchars+=space:·

"set cursorcolumn
"set cursorline

nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" nmap <silent> <A-Up> :wincmd k<CR>
" nmap <silent> <A-Down> :wincmd j<CR>
" nmap <silent> <A-Left> :wincmd h<CR>
" nmap <silent> <A-Right> :wincmd l<CR>

set splitbelow
set splitright


"folding settings
"let php_folding=1
"set foldmethod=syntax   "fold based on indent
set foldnestmax=3      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
"set foldlevelstart=2

set nocompatible               " be iMproved
"filetype off                   " required!

" set rtp+=~/.vim/bundle/vundle
" call vundle#rc()

" let Vundle manage Vundle
" required! 
" Bundle 'gmarik/vundle'

" My Bundles here:

function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.sh --clang-completer --ts-completer
  endif
endfunction

call plug#begin('~/.vim/plugged')

Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'vim-syntastic/syntastic'
" Plug 'w0rp/ale'
" Plug 'zefei/vim-wintabs'
Plug 'editorconfig/editorconfig-vim'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'altercation/vim-colors-solarized'
" Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'othree/yajs.vim'
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'mxw/vim-jsx'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'flazz/vim-colorschemes'
Plug 'felixhummel/setcolors.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'chrisbra/csv.vim'
" Plug 'google/vim-colorscheme-primary'
" Plug 'Quramy/vim-js-pretty-template'
" Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

call plug#end()

syntax enable
set background=dark
" colorscheme solarized
" colorscheme primary
" colorscheme desert
" colorscheme default

" let g:solarized_diffmode="high"

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

if &diff
	" colorscheme desert
endif

set completeopt-=preview

set diffopt+=iwhite
set diffexpr=DiffW()
function DiffW()
  let opt = ""
   if &diffopt =~ "icase"
     let opt = opt . "-i "
   endif
   if &diffopt =~ "iwhite"
     let opt = opt . "-w " " swapped vim's -b with -w
   endif
   silent execute "!diff -a --binary " . opt .
     \ v:fname_in . " " . v:fname_new .  " > " . v:fname_out
endfunction

"filetype plugin indent on     " required!

:set encoding=utf-8

:set tenc=utf8

:set isprint=

if !has('gui_running')
  set t_Co=256
endif

" if (has("termguicolors"))
"   set termguicolors
" endif

"let g:nerdtree_tabs_open_on_console_startup=1
map <C-n> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

highlight HLONE cterm=NONE ctermbg=green ctermfg=white
highlight HLTWO cterm=NONE ctermbg=red ctermfg=white

nnoremap q :mat HLONE "<C-R><C-W>"<CR>
nnoremap Q :2mat HLTWO "<C-R><C-W>"<CR>
nnoremap qq :mat none<CR>
nnoremap QQ :2mat none<CR>



" nmap <silent> <C-u> :split<CR>
" nmap <silent> <C-i> :vsplit<CR>
nmap <silent> <C-o> :CtrlPBuffer<CR>

let g:ctrlp_cmd='CtrlP :pwd'

" nmap <silent> <C-p> :CtrlP<CR>
let g:ctrlp_working_path_mode = 'ra'

" menu completion in command mode on <tab>
set wildmenu
" <tab> cycles between all matching choices.
set wildmode=full
" ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc


"set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>
nnoremap <F10> :b <C-Z>

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
" nnoremap <Leader>l :ls<CR>
" nnoremap <Leader>b :bp<CR>
" nnoremap <Leader>f :bn<CR>
" nnoremap <Leader>g :e#<CR>
" nnoremap <Leader>1 :1b<CR>
" nnoremap <Leader>2 :2b<CR>
" nnoremap <Leader>3 :3b<CR>
" nnoremap <Leader>4 :4b<CR>
" nnoremap <Leader>5 :5b<CR>
" nnoremap <Leader>6 :6b<CR>
" nnoremap <Leader>7 :7b<CR>
" nnoremap <Leader>8 :8b<CR>
" nnoremap <Leader>9 :9b<CR>
" nnoremap <Leader>0 :10b<CR>

let g:ctrlp_custom_ignore = 'node_modules\|build\|DS_Store\|coverage\|out\|dist\|.next\|\.\/icons'
" let g:ctrlp_custom_ignore = '\v[\/]\.(DS_Store|git|hg|svn|optimized|compiled|build|node_modules)$'


:set tabstop=3

"set noshowmode

"write everything
set autowriteall

" use <ctrl> hjkl to move between buffers
map <c-j> :bp <CR>
map <c-k> :bn <CR>
map <c-h> :bfirst <CR>
map <c-l> :blast <CR>

highlight DiffAdd    cterm=NONE ctermfg=0 ctermbg=2
highlight DiffDelete cterm=NONE ctermfg=0 ctermbg=1
highlight DiffChange cterm=NONE ctermfg=0 ctermbg=2
highlight DiffText   cterm=NONE ctermfg=0 ctermbg=6

autocmd FilterWritePre * if &diff | setlocal wrap< | endif

set rulerformat=%30(%f%=%l,%c%V\ %P%)

function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

function! C2cjs()
  " Save cursor position
  let l:save = winsaveview()
  " Remove trailing whitespace
  %s/import\s\+\(.\+\)\s\+from\s\+\('.\+'\);/const \1 = require(\2);/g
  " Move cursor to original position
  call winrestview(l:save)
endfunction

" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>
inoremap <C-x> <esc>:qa<cr>               " quit discarding changes
nnoremap <C-x> :qa<cr>

inoremap <C-b> <esc>:bd<cr>               " quit discarding changes
nnoremap <C-b> :bd<cr>

inoremap <F2> <esc>:w<cr>:bd<cr>
nnoremap <F2> <esc>:w<cr>:bd<cr>

if &diff
    set cursorline
    map ] ]c
    map [ [c
endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npx eslint --'
let g:syntastic_typescript_eslint_exe = 'npx eslint --'
let g:jsx_ext_required = 0

let g:airline_section_x=''
let g:airline_section_y=''
let g:airline_theme='bubblegum'

autocmd Filetype gitcommit setlocal spell textwidth=72

" noremap  <Up> ""
" noremap! <Up> <Esc>
" noremap  <Down> ""
" noremap! <Down> <Esc>
" noremap  <Left> ""
" noremap! <Left> <Esc>
" noremap  <Right> ""
" noremap! <Right> <Esc>


" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

set autowriteall


"----------------------------------"
"--------- COC VIM ----------------"
"----------------------------------"
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json', 'coc-css' ]

"it fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
" set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>l :<C-u>CocList<cr>


nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)

" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>
"
map <CS-I> :CocCommand prettier.formatFile<CR><CR>
