" ~/.config/nvim/init.vim
syntax on

colorscheme codedark
"colorscheme hashpunk


set bg=dark
set number
set title
set scrolloff=15
set mouse=a
set hlsearch
set ignorecase
set smartcase
set incsearch
set laststatus=2
set viminfo='500,<500,s10,h
:set colorcolumn=80



" hi current line, but only in ruler
set cursorline
hi clear CursorLine
hi CursorLineNR ctermbg=yellow ctermfg=black

" Download https://github.com/junegunn/vim-plug
" Then do :PlugInstall
call plug#begin('~/.config/nvim/pugged')



	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
	Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'scrooloose/nerdtree'
	Plug 'airblade/vim-gitgutter'
	Plug 'kien/ctrlp.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-scripts/grep.vim'
	Plug 'majutsushi/tagbar'
	Plug 'jistr/vim-nerdtree-tabs'

	" vim commentary
	Plug 'tpope/vim-commentary'









call plug#end()

let g:deoplete#enable_at_startup = 1
let g:go_def_mode = "gopls"
let g:go_fmt_command = "goimports"

let g:go_fmt_autosave = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_operators = 1
let g:go_metalinter_enabled = ['vet', 'errcheck']
let g:go_list_type = "quickfix"


call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

" set tabspace=4 and expandtabs for specific projects
augroup ProjectSetup
au BufRead,BufEnter ~/projects/sim/* set et sts=4
augroup END

" remember last line
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif


command WQ wq
command Wq wq
command W w
command Q q

" Insert new line without entering insert mode
nmap oo o<Esc>
nmap OO O<Esc>

"split navigations/
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>


" FX bindings
nmap <F2> :vsplit<CR>
nmap <F3> :split<CR>
nmap <F12> :GoReferrers <CR>


"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 40
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F8> :NERDTreeFind<CR>
nnoremap <silent> <F6> :NERDTreeToggle<CR>

" grep.vim
nnoremap <silent> <F10> :Rgrep<CR>
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'


" vim-airline
" let g:airline_theme = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1


"go
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>






