call plug#begin()
" List your plugins here
Plug 'lambdalisue/fern.vim'
let g:fern#disable_default_mappings   = 1
let g:fern#disable_drawer_auto_quit   = 1
let g:fern#disable_viewer_hide_cursor = 1
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'davidhalter/jedi-vim'
Plug 'junegunn/fzf.vim'
Plug 'othree/eregex.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'mitermayer/vim-prettier'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wellle/targets.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'flazz/vim-colorschemes'
Plug 'lambdalisue/nerdfont.vim'
let g:fern#renderer = "nerdfont"
let g:fern_git_status#disable_ignored    = 1
let g:fern_git_status#disable_untracked  = 1
let g:fern_git_status#disable_submodules = 1
call plug#end()
" Appearance
set number relativenumber
set hlsearch
set cursorline
colorscheme Monokai
highlight Search ctermbg=red ctermfg=white
set shortmess-=S
if &term =~ "xterm\\|rxvt"
  let &t_SI = "\e[6 q"
  let &t_EI = "\e[3 q"
endif
" Lifesavers
nnoremap <C-r> :source ~/.vimrc<cr>
nnoremap <C-x> :below terminal ++rows=10<cr>
nnoremap <C-f> :Files<CR>
nnoremap <C-d> :call feedkeys(":cd ")<CR>
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>
" tab completion
let mapleader = '\'
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
" Fern stuff
noremap <silent> <Leader>d :Fern . -drawer -width=35 -toggle<CR><C-w>=
function! FernInit() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:select)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )
  nmap <buffer> <CR> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> <2-LeftMouse> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> t <Plug>(fern-action-mark:toggle)
  nmap <buffer> n <Plug>(fern-action-new-file)
  nmap <buffer> f <Plug>(fern-action-new-dir)
  nmap <buffer> e <Plug>(fern-action-remove)
  nmap <buffer> m <Plug>(fern-action-move)
  nmap <buffer> r <Plug>(fern-action-rename)
  nmap <buffer> s <Plug>(fern-action-open:split)
  nmap <buffer> v <Plug>(fern-action-open:vsplit)
  nmap <buffer> R <Plug>(fern-action-reload)
  nmap <buffer> <nowait> T <Plug>(fern-action-hidden:toggle)
  nmap <buffer> <nowait> < <Plug>(fern-action-leave)
  nmap <buffer> <nowait> > <Plug>(fern-action-enter)
endfunction

augroup FernEvents
  autocmd!
  autocmd FileType fern call FernInit()
augroup END
