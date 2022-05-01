syntax on
set number
set relativenumber
set nocompatible
set encoding=utf-8
filetype plugin indent on
let mapleader = " "

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'dracula/vim'
Plug 'github/copilot.vim'
Plug 'matveyt/neoclip'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/vimux'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tpope/vim-fugitive'
Plug 'sindrets/diffview.nvim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
call plug#end()

" COC specific settings
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" go to definition
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" nerdtree
" ---> to hide unwanted files <---
let NERDTreeIgnore = [ '__pycache__', '\.pyc$', '\.o$', '\.swp',  '*\.swp',  'node_modules/' ]
" ---> show hidden files <---
let NERDTreeShowHidden=1
" ---> autostart nerd-tree when you start vim <---
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:stdn_in") | NERDTree | endif
" ---> toggling nerd-tree using Ctrl-N <---
map <C-n> :NERDTreeToggle<CR>



" theme
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula
hi normal guibg=000000

" prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
nmap <silent> <Leader>p :Prettier<CR>

" if prettier file is present, use it
set tabstop=4
set expandtab 
set shiftwidth=2 
set smarttab

" Restart Highlighting <CTRL-s>
nmap <silent> <C-s> :syn sync fromstart<CR>

" Highlighting for large files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Shortcuts to change between tabs
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

" Let comments italic
highlight Comment cterm=italic gui=italic