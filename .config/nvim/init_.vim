set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set number
"set cursorline
"set cursorcolumn
set virtualedit=onemore
set smartindent
set showmatch
set laststatus=2
set wildmode=list:longest
set nowrap


set list listchars=tab:\>\-
set expandtab
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
set clipboard=unnamedplus

let mapleader="\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
nmap <Leader>u <C-r>
nmap <Leader>n :nohlsearch<CR><ESC>

let g:session_path = expand($HOME . '/.vim/sessions')

if !isdirectory(g:session_path)
    call mkdir(g:session_path, 'p')
endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state($HOME . '/.cache/dein')
    call dein#begin($HOME . '/.cache/dein')

    " Let dein manage dein
    " Required:
    call dein#add('cocopon/iceberg.vim')
    call dein#add('Shougo/dein.vim')
    call dein#add('Shougo/unite.vim')
    call dein#add('Shougo/vimfiler.vim')
    call dein#add('sheerun/vim-polyglot')
    call dein#add('ryanoasis/vim-devicons')
    call dein#add('vim-airline/vim-airline')
    call dein#add('jiangmiao/auto-pairs')
    call dein#add('terryma/vim-multiple-cursors')
    call dein#add('neovim/nvim-lspconfig')
    call dein#add('williamboman/nvim-lsp-installer')

    " Required:
    call dein#end()
    call dein#save_state()

    if executable('sxiv') && executable('gimp') && executable('inkscape')
        augroup vimfiler_mapping
            autocmd!
            autocmd FileType vimfiler nmap <buffer> x <Plug>(vimfiler_execute_vimfiler_associated)
        augroup END
        call vimfiler#set_execute_file('svg', ['sxiv', 'inkscape', 'vim'])
        call vimfiler#set_execute_file('png,jpeg,jpg,heic,gif,tiff', ['sxiv', 'gimp', 'inkscape'])
        call vimfiler#set_execute_file('pdf', ['zathura'])
    endif

    lsp_installer = require("nvim-lsp-installer")
    lsp_installer.on_server_ready(function(server)
        local opts = {}
        opts.on_attach = on_attach

        server:setup(opts)
        vim.cmd [[ do User LspAttachBuffers ]]
    end)
endif

" Required:
filetype plugin indent on
syntax enable


" Set indent as 2 for JS and TS 
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.js,*.jsx,*.ts,*.tsx,*.mjs,*.cjs setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.go setlocal noexpandtab
augroup END


" VimAirline settings

let g:airline#extensions#tabline#enabled = 1
let g:airline_highlighting_cache=1
let g:airline_theme='iceberg'

" VimFiler Settings

let g:vimfiler_safe_mode_by_default=0
nnoremap <Leader>f :VimFiler<CR>


" Vim Lsp Settings

let g:lsp_settings_filetype_typescript = ['typescript-language-server', 'eslint-language-server']

let g:asyncomplete_auto_popup=1
let g:asyncomplete_popup_delay=200

nnoremap <C-]> :<C-u>LspDefinition<CR>
nnoremap K :<C-u>LspHover<CR>
nnoremap <Leader>R :<C-u>LspRename<CR>
nnoremap <Leader>N :<C-u>LspReferences<CR>
nnoremap <Leader>F :<C-u>LspDocumentDiagnostics<CR>
nnoremap <Leader>s :<C-u>LspDocumentFormat<CR>
set omnifunc=lsp#complete

nnoremap <Leader>d :LspDefinition<CR>
nnoremap <Leader>D :LspReferences<CR>

syntax enable
set background=dark
colorscheme molokai

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif