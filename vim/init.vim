"
" ███╗   ███╗██╗   ██╗    ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗     ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗
" ████╗ ████║╚██╗ ██╔╝    ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║    ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝
" ██╔████╔██║ ╚████╔╝     ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║    ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
" ██║╚██╔╝██║  ╚██╔╝      ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║    ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
" ██║ ╚═╝ ██║   ██║       ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║    ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
" ╚═╝     ╚═╝   ╚═╝       ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝     ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝
"
if &compatible
 set nocompatible
endif

" Remap Leader
let mapleader=","

" Python 2.7 & 3
let g:python_host_prog = '/Users/pawel.damasiewicz/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/pawel.damasiewicz/.pyenv/versions/neovim3/bin/python'

" AirLine
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

let g:ale_php_langserver_use_global = 1
let g:ale_php_langserver_executable = $HOME.'/.config/composer/vendor/bin/php-language-server.php'
let g:ale_completion_enabled = 1

let g:ale_update_tagstack = 1

set hidden

" ██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
" ██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝
" ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗
" ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║
" ██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║
" ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" '/Users/pawel.damasiewicz/.cache/dein'

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('roxma/nvim-yarp')

  " Completion
  call dein#add('jsfaint/gen_tags.vim')

  " UI
  call dein#add('scrooloose/nerdtree')
  call dein#add('chriskempson/base16-vim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  " T. Pope
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-unimpaired')
  call dein#add('tpope/vim-rails')

  " Checkers
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('vim-ruby/vim-ruby')
  call dein#add('dense-analysis/ale')

  " Searching
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  call dein#add('majutsushi/tagbar')

  " Collaborating
  call dein#add('floobits/floobits-neovim')

  " Required
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

set background=light
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-mocha
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set rnu
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
  set scrolloff=5       " Show next 3 lines while scrolling.
endif

if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif

set display+=lastline
set nostartofline       " Do not jump to first character with page commands.

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
set list                " Show problematic characters.
set lcs=tab:>\ ,trail:·,extends:>,precedes:<,nbsp:+
set lcs+=space:·

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

set statusline+=%#warningmsg#
set statusline+=%*

" PHP Stuff
autocmd FileType php set tabstop=4|set shiftwidth=4

" Python stuff
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab

" YAML stuff
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab

" Jenkins DSL
au! BufNewFile,BufReadPost *.dsl set filetype=groovy
autocmd FileType groovy setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab

" PHP CS
au! BufNewFile,BufReadPost .php_cs set filetype=php foldmethod=indent

" ██╗  ██╗███████╗██╗   ██╗    ██████╗ ██╗███╗   ██╗██████╗ ██╗███╗   ██╗ ██████╗ ███████╗
" ██║ ██╔╝██╔════╝╚██╗ ██╔╝    ██╔══██╗██║████╗  ██║██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝
" █████╔╝ █████╗   ╚████╔╝     ██████╔╝██║██╔██╗ ██║██║  ██║██║██╔██╗ ██║██║  ███╗███████╗
" ██╔═██╗ ██╔══╝    ╚██╔╝      ██╔══██╗██║██║╚██╗██║██║  ██║██║██║╚██╗██║██║   ██║╚════██║
" ██║  ██╗███████╗   ██║       ██████╔╝██║██║ ╚████║██████╔╝██║██║ ╚████║╚██████╔╝███████║
" ╚═╝  ╚═╝╚══════╝   ╚═╝       ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝


" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

vnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

vnoremap <leader>nc :NERDTreeFind<CR>
nnoremap <leader>nc :NERDTreeFind<CR>

" FZF
vnoremap <leader>fe :Buffers<CR>
nnoremap <leader>fe :Buffers<CR>

vnoremap <leader>fr :Files<CR>
nnoremap <leader>fr :Files<CR>

vnoremap <leader>fg :GFiles?<CR>
nnoremap <leader>fg :GFiles?<CR>

vnoremap <leader>fb :call fzf#run({'source': 'git diff --name-only develop HEAD', 'sink': 'e'})<CR>
nnoremap <leader>fb :call fzf#run({'source': 'git diff --name-only develop HEAD', 'sink': 'e'})<CR>

vnoremap <C-]> :ALEGoToDefinition<CR>
nnoremap <C-]> :ALEGoToDefinition<CR>


