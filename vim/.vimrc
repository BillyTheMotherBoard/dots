"                                   
"                    ██▒   █▓ ██▓ ███▄ ▄███▓ ██▀███   ▄████▄  
"                   ▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██ ▒ ██▒▒██▀ ▀█  
"                    ▓██  █▒░▒██▒▓██    ▓██░▓██ ░▄█ ▒▒▓█    ▄ 
"                     ▒██ █░░░██░▒██    ▒██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
"                      ▒▀█░  ░██░▒██▒   ░██▒░██▓ ▒██▒▒ ▓███▀ ░
"                      ░ ▐░  ░▓  ░ ▒░   ░  ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░
"                      ░ ░░   ▒ ░░  ░      ░  ░▒ ░ ▒░  ░  ▒   
"                        ░░   ▒ ░░      ░     ░░   ░ ░        
"                         ░   ░         ░      ░     ░ ░      
"                        ░                           ░        
"
"                       My vim setup for my big linux boy :p

call plug#begin('~/.config/vim/plugged')

" file browsing/searching
Plug 'scrooloose/nerdtree'

" colors
Plug 'lilydjwg/colorizer'
Plug 'chriskempson/base16-vim'

call plug#end()

colorscheme base16-ocean
let base16colorspace=256

" indents for different filetypes
autocmd FileType less,css,html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType text setlocal expandtab

set nobackup
set nowritebackup
set noswapfile " get rid of swapfiles everywhere
set dir=/tmpset

" UI SETTINGS

let g:enable_bold_font = 1
let g:enable_italic_font = 1

" autocmd BufWritePre * %s/\s\+$//e " strip trailing whitespaces
syntax on

filetype indent on

set number
set ttyfast
set laststatus=2                                          " always show the status line
set nowrap                                                " dont wrap the text
set noshowmode                                            " statusline shows the current mode anyways
set cursorline                                            " highlight current line
set listchars=tab:│\ ,nbsp:␣,trail:▪,extends:>,precedes:< " tab, end of line, non-breakable space chars
set scrolloff=12                                          " start scrolling before end is reached
set ignorecase                                            " case insensitive searching
set smartcase                                             " /The searches for 'The but /the searches for 'The' and 'the'
set sidescroll=40                                         " like scrolloff but sideways
set incsearch                                             " highlight results as you type
set hlsearch                                              " highlight search results
set undofile                                              " maintaion undo history
set undodir=~/.config/vim/undodir                         " store swaps here
set showcmd                                               " show current cmd in cmdline
set updatetime=250                                        " instant live status updates
set backspace=indent,eol,start

set shiftwidth=4	 " indent = 4 spaces
set noexpandtab      " tabs are tabs
set tabstop=4        " tab = 4 spaces
set softtabstop=4    " backspace through spaces
