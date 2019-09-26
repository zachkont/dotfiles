"ln -s to ~/

set nocompatible              " be iMproved, required by vundle
filetype off                  " required by vundle

"Set the runtime path to include fzf
set rtp+=/home/zach/.github-repos/fzf     
"Set the runtime path to include Vundle and initialize
set rtp+=/home/zach/.vim/bundle/Vundle.vim
call vundle#begin()

"Let Vundle handle itself
Plugin 'gmarik/Vundle.vim'

"Plugins
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf.vim'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mxw/vim-jsx'
Plugin 'davidklsn/vim-sialoquent'

call vundle#end()            " required
filetype plugin indent on    " required

if has("gui_running")
    set lines=999 columns=120
    set guioptions-=m        "remove menu bar
    set guioptions-=T        "remove toolbar
    set guioptions-=r        "remove right-hand scroll bar
    set guioptions-=L        "remove left-hand scroll bar
    set background=dark
    if has("gui_win32")
        set guifont=Consolas:h11:cANSI
    elseif has("gui_gtk2")
        set guifont=Powerline\ Consolas\ 10
    else
        set guifont=Powerline\ Consolas\ 11
    endif
endif

color sialoquent        "Use sialoquent color scheme
syntax enable           "Enable syntax highlighting
set encoding=utf-8      "Set default encoding
set noswapfile          "Disable swap files

set expandtab           "Replace tabs with spaces
set tabstop=8           "Set tab width in spaces
set shiftwidth=2        "Set indent width in spaces

set number              "Enable line numbering"
set relativenumber      "Enable relative line numbering
set showcmd             "Show (partial) command in the last line of the screen
set showmatch           "Highlights matching brackets in programming languages

set incsearch           "Enable incremental search
set ignorecase          "Ignore case in search patterns
set smartcase           "Override the 'ignorecase' option if the search pattern contains uppercase characters
"set spell               "Enable spellcheck"
set spellfile=/home/zach/.vim/spell/en.utf-8.add
set hlsearch            "Highlight all search matches"
"Focus the searched term in the center
nnoremap n nzzzv
"Focus the previous serched term in the center
nnoremap N Nzzzv
"Search only inside visual block
vnoremap / /\%V

set mouse=a             "Allows you to click around with your mouse to move the cursor
set autoindent          "If you're indented, new lines will also be indented
set smartindent         "Automatically indents lines after opening a bracket in programming languages

set scrolloff=2         "Always keep two lines above/below selection visible

"Control-t trims whitespace from the file
nnoremap <C-t> :%s/\s\+$//e<CR>

"Wild autocomplete improvements
set wildmode=longest,list
set wildignore+=*.DS_Store,*.pdf,*.png,*.beam,*.o
set wildignore+=*.o,*.obj,*.exe,*.dll

"Change what the statusline shows
set laststatus=2        "he last window will have a	status line always
set statusline=name:\ %t\ -\ [%l/%L,%c]\ -\ Buffer:\ %n

"List of hidden characters to show when using 'set list'
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

"Disable Q in normal mode - not working 100%
noremap Q q 
noremap W w

"Toggle nerdtree with F1
nmap <F1> :NERDTreeToggle<CR>
"Close vim if NERDTree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd BufRead,BufNewFile COMMIT_EDITMSG setlocal spell

"Adds a sweet menu, press F4 to use it.
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<c-z>
nmap <f4> :emenu <c-z>

"Airline setup
set noshowmode          "Let airline do the thing
set ttimeoutlen=50
augroup line_return
    au!
    au BufReadPost *
                \if line("'\"") > 0 && line("'\"") <= line("$") |
                \   execute 'normal! g`"zvzz' |
                \endif
augroup END
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_section_y = 'Buffer: %n'
let g:airline_section_z = airline#section#create(['%3p%% ', 'linenr', ':%3v'])
let g:airline_theme = 'molokai'

"Use tab to move to matching end
"Also use to select entire block in visual mode
runtime macros/matchit.vim
map <tab> %

"Buffer and fuzzysearch hotkeys
let mapleader=","
nmap ; :Buffers
nmap <Leader>t :Files<CR>

"Alt+leftarrow will go one window left, etc.
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"Match greek characters
map Α A
map Β B
map Ψ C
map Δ D
map Ε E
map Φ F
map Γ G
map Η H
map Ι I
map Ξ J
map Κ K
map Λ L
map Μ M
map Ν N
map Ο O
map Π P
map Q Q

map Ρ R
map Σ S
map Τ T
map Θ U
map Ω V
map W W
map Χ X
map Υ Y
map Ζ Z
map α a
map β b
map ψ c
map δ d
map ε e
map φ f
map γ g
map η h
map ι i
map ξ j

map κ k
map λ l
map μ m
map ν n
map ο o
map π p
map q q
map ρ r
map σ s
map τ t
map θ u
map ω v
map ς w
map χ x
map υ y
map ζ z


