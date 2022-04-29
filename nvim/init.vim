call plug#begin()

"Github Copilot, should run :Copilot setup for login
Plug 'dracula/vim'
Plug 'github/copilot.vim'
Plug 'matveyt/neoclip'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

" TypeScript Highlighting
Plug 'pangloss/vim-javascript'
Plug 'pangloss/vim-javascript-syntax'
Plug 'pangloss/vim-jsx'
Plug 'pangloss/vim-yaml'
Plug 'pangloss/vim-json'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()

"Config Section
set number
set relativenumber
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula
hi normal guibg=000000
let mapleader = ","
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
nmap <silent> <Leader>p :Prettier<CR>

" Restart Highlighting <CTRL-s>
nmap <silent> <C-s> :syn sync fromstart<CR>

" Highlighting for large files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

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
