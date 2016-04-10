"|  \/  (_) |                        (_)
"| .  . |_| | _____  ___   _ ____   ___ _ __ ___  _ __ ___
"| |\/| | | |/ / _ \/ __| | '_ \ \ / / | '_ ` _ \| '__/ __|
"| |  | | |   <  __/\__ \ | | | \ V /| | | | | | | | | (__
"\_|  |_/_|_|\_\___||___/ |_| |_|\_/ |_|_| |_| |_|_|  \___|
"
" Author: Mike Hartington
" repo  : https://github.com/mhartington/dotfiles/
"

" Setup NeoBundle  ----------------------------------------------------------{{{
" If vundle is not installed, do it first
  let bundleExists = 1
  if (!isdirectory(expand("$HOME/.nvim/bundle/neobundle.vim")))
     call system(expand("mkdir -p $HOME/.nvim/bundle"))
     call system(expand("git clone https://github.com/Shougo/neobundle.vim ~/.nvim/bundle/neobundle.vim"))
     let bundleExists = 0
  endif
  if 0 | endif

  if has('vim_starting')
    if &compatible
      " Be iMproved
      set nocompatible
    endif

" Required:
    set runtimepath+=~/.nvim/bundle/neobundle.vim/
    " set runtimepath+=~/Github/deoplete-angular/
  endif

" Required:
  call neobundle#begin(expand('~/.nvim/bundle/'))
  let pluginsExist = 1
" Let NeoBundle manage NeoBundle
" Required:
  NeoBundleFetch 'Shougo/neobundle.vim'

" syntax
  " NeoBundle 'pangloss/vim-javascript'
  " NeoBundle 'jelera/vim-javascript-syntax'
  " NeoBundle 'mxw/vim-jsx'
  NeoBundle 'othree/yajs.vim'
  NeoBundle 'othree/es.next.syntax.vim'
  "NeoBundle 'Townk/vim-autoclose.vim'
  NeoBundle  'jiangmiao/auto-pairs'
  NeoBundle '1995eaton/vim-better-javascript-completion'
  NeoBundleLazy 'kchmck/vim-coffee-script',  {'autoload':{'filetypes':['coffee']}}
  NeoBundle 'hail2u/vim-css3-syntax'
  NeoBundle 'moll/vim-node'
  NeoBundle 'burnettk/vim-angular'
" NeoBundle 'vim-scripts/SyntaxComplete'
  NeoBundle 'othree/javascript-libraries-syntax.vim'
  NeoBundleLazy 'elzr/vim-json', {'autoload':{'filetypes':['json']}}
  NeoBundle 'tpope/vim-markdown'
  NeoBundle 'suan/vim-instant-markdown'
" Typescript
  NeoBundle 'HerringtonDarkholme/yats.vim'
  NeoBundle 'Quramy/tsuquyomi'
  NeoBundle 'vim-scripts/applescript.vim'
" Rust
  NeoBundle 'phildawes/racer'
  NeoBundle 'racer-rust/vim-racer'
  NeoBundle 'rust-lang/rust.vim'

"" Ruby Bundle
  NeoBundle "tpope/vim-rails"
  NeoBundle "tpope/vim-rake"
  NeoBundle "tpope/vim-projectionist"
  NeoBundle "thoughtbot/vim-rspec"
  NeoBundle "majutsushi/tagbar"
  NeoBundle "ecomba/vim-ruby-refactoring"

" colorscheme & syntax highlighting

  NeoBundle 'mhartington/oceanic-next'
  NeoBundle 'Yggdroot/indentLine'
  NeoBundle 'myhere/vim-nodejs-complete'
  NeoBundle 'Raimondi/delimitMate'
  NeoBundle 'valloric/MatchTagAlways'
 " Git helpers
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'jreybert/vimagit'
  NeoBundle 'airblade/vim-gitgutter'
  NeoBundle 'Xuyuanp/nerdtree-git-plugin'
  NeoBundle 'https://github.com/jaxbot/github-issues.vim'
" untils
  NeoBundle 'benekastah/neomake'
  NeoBundle 'editorconfig/editorconfig-vim'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'AndrewRadev/switch.vim'
  NeoBundle 'christoomey/vim-tmux-navigator'
  NeoBundle 'tmux-plugins/vim-tmux'
  NeoBundle 'tmux-plugins/vim-tmux-focus-events'
  NeoBundle 'vim-airline/vim-airline'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'tomtom/tcomment_vim'
  NeoBundle 'mattn/emmet-vim'
  NeoBundle 'Chiel92/vim-autoformat'
  NeoBundle 'gorodinskiy/vim-coloresque'
  NeoBundle 'zorio/vim-python'
  NeoBundle 'FuDesign2008/ToggleNumber.vim'
  NeoBundle 'kassio/neoterm'
  " Shougo
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'Shougo/unite-outline'
  NeoBundle 'ujihisa/unite-colorscheme'
  NeoBundle 'Shougo/vimfiler.vim'
  NeoBundle 'Shougo/vimproc.vim', {
        \ 'build' : {
        \     'windows' : 'tools\\update-dll-mingw',
        \     'cygwin' : 'make -f make_cygwin.mak',
        \     'mac' : 'make -f make_mac.mak',
        \     'linux' : 'make',
        \     'unix' : 'gmake',
        \    },
        \ }
  NeoBundle 'Shougo/deoplete.nvim'
  NeoBundle 'Shougo/neco-vim'
  NeoBundle 'Shougo/neoinclude.vim'
  NeoBundleLazy 'ujihisa/neco-look',{'autoload':{'filetypes':['markdown']}}
  NeoBundle 'Shougo/neosnippet.vim'
  NeoBundle 'Shougo/neosnippet-snippets'
  NeoBundle 'honza/vim-snippets'
  NeoBundle 'matthewsimo/angular-vim-snippets'

  NeoBundle 'junegunn/fzf', { 'dir': '~/.fzf' }
  NeoBundle 'junegunn/fzf.vim'
  NeoBundle 'ashisha/image.vim'
  NeoBundle 'mhinz/vim-sayonara'
  NeoBundle 'vim-lua-ftplugin', {'depends': 'xolox/vim-misc'}
  NeoBundle 'mattn/gist-vim', {'depends': 'mattn/webapi-vim'}
  NeoBundle 'terryma/vim-multiple-cursors'
  NeoBundle 'rhysd/github-complete.vim'
  NeoBundle 'junegunn/goyo.vim'
  NeoBundle 'junegunn/limelight.vim'
  NeoBundle 'https://github.com/danielmiessler/VimBlog'
  NeoBundle 'https://github.com/neovim/node-host'
  NeoBundle 'vim-scripts/SyntaxRange'
  NeoBundle 'vim-scripts/ingo-library'
  NeoBundle 'vim-scripts/CSApprox'
  " NeoBundle 'vim-scripts/XML-Folding'
  " NeoBundle 'Wildog/airline-weather.vim', {'depends': 'mattn/webapi-vim'}
  NeoBundle 'ruanyl/vim-fixmyjs'

  NeoBundle 'ryanoasis/vim-devicons'
  call neobundle#end()

" Required:
  filetype plugin indent on
  let pluginsExist=1
  NeoBundleCheck
" }}}

if pluginsExist
" System Settings  ----------------------------------------------------------{{{

  source ~/.local.vim
" Neovim Settings
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  let $NEOVIM_JS_DEBUG='~/.nvimjsdebug'
  set clipboard+=unnamedplus
" Currently needed for neovim paste issue
  set pastetoggle=<f6>

" Open new horizontal splits on the bottom.
  set splitbelow

" Open new vertical splits on the right.
  set splitright
" Enable mouse use in all modes
  set mouse=a
" Let airline tell me my status
  set noshowmode
  set noswapfile
  filetype on
  "set relativenumber number
  set tabstop=2 shiftwidth=2 expandtab
  set conceallevel=0
" block select not limited by shortest line
  set virtualedit=
  set wildmenu
  set laststatus=2
  "set colorcolumn=100
  set wrap linebreak nolist
  set wildmode=full
" leader is ,
  let mapleader = ','
  set undofile
  set undodir="$HOME/.VIM_UNDO_FILES"
" Remember cursor position between vim sessions
  autocmd BufReadPost *
              \ if line("'\"") > 0 && line ("'\"") <= line("$") |
              \   exe "normal! g'\"" |
              \ endif
              " center buffer around cursor when opening files
  autocmd BufRead * normal zz
  "set cursor underscore 
  set guicursor+=n:hor20-Cursor/lCursor
  let g:jsx_ext_required = 0
  set complete=.,w,b,u,t,k
  let g:gitgutter_max_signs = 1000  " default value
  let g:used_javascript_libs = 'angularjs,angularuirouter'
  autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
  autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
  let g:lua_complete_omni = 1

  let g:weather#area = 'providence,us'
  let g:weather#unit = 'imperial'
  let g:weather#appid = '2c83c228da74ab9a9c7f756b0a7c6aaf'
  let g:weather#cache_file = '~/.cache/.weather'
  let g:weather#cache_ttl = '3600'
  let g:indentLine_char='│'
  " enable deoplete
  let g:deoplete#enable_at_startup = 1

" }}}

" System mappings  ----------------------------------------------------------{{{

" No need for ex mode
  nnoremap Q <nop>
" recording macros is not my thing
  map q <Nop>
" exit insert, dd line, enter insert
  inoremap <c-d> <esc>ddi
" toggle line number both in normal and insert mode
  let g:toggle_number_custom_keymap = 1
  nnoremap <F2> :ToggleNumber<CR>
" Vertical terminate windows .
  nnoremap <F4> :60 vsp term://zsh<CR>
" Double-click highlighting all occurrences of a word 
  map <2-LeftMouse> *
  imap <2-LeftMouse> <c-o>*
" Navigate between display lines
  noremap  <silent> <Up>   gk
  noremap  <silent> <Down> gj
  noremap  <silent> k gk
  noremap  <silent> j gj
  noremap  <silent> <Home> g<Home>
  noremap  <silent> <End>  g<End>
  inoremap <silent> <Home> <C-o>g<Home>
  inoremap <silent> <End>  <C-o>g<End>
" copy current files path to clipboard
  nmap cp :let @+ = expand("%") <cr>
" Neovim terminal mapping
" terminal 'normal mode'
  tmap <esc> <c-\><c-n><esc><cr>
" ,f to format code, requires formatters: read the docs
  noremap <leader>f :Autoformat<CR>
" exit insert, dd line, enter insert
  inoremap <c-d> <esc>ddi
  noremap H ^
  noremap L g_
  noremap J 5j
  noremap K 5k
" this is the best, let me tell you why
" how annoying is that everytime you want to do something in vim
" you have to do shift-; to get :, can't we just do ;?
" Plus what does ; do anyways??
" if you do have a plugin that needs ;, you can just wap the mapping
" nnoremap : ;
" give it a try and you will like it
  nnoremap ; :
  inoremap <c-f> <c-x><c-f>
" Copy to osx clipboard
  vnoremap <C-c> "*y<CR>
  vnoremap y "*y<CR>
  nnoremap Y "*Y<CR>
" Copy to clipboard
  vnoremap  <leader>y  "+y
  nnoremap  <leader>Y  "+yg_
  nnoremap  <leader>y  "+y
  nnoremap  <leader>yy  "+yy

  let g:multi_cursor_next_key='<C-n>'
  let g:multi_cursor_prev_key='<C-p>'
  let g:multi_cursor_skip_key='<C-x>'
  let g:multi_cursor_quit_key='<Esc>'

" Align blocks of text and keep them selected
  vmap < <gv
  vmap > >gv
  nnoremap <leader>d "_d
  vnoremap <leader>d "_d
  vnoremap <c-/> :TComment<cr>
  map <esc> :noh<cr>
  autocmd FileType typescript nmap <buffer> <Leader>T : <C-u>echo tsuquyomi#hint()<CR>

" activate visual mode in normal mode
  nmap <S-Up> V
  nmap <S-Down> V
" these are mapped in visual mode
  vmap <S-Up> k
  vmap <S-Down> j
" 
" etc...

" autclose {}
  "inoremap {<CR> {<CR>}<C-o>O

" similarly <S-Left>, <S-Right> for v
  nnoremap <leader>e :call <SID>SynStack()<CR>
  function! <SID>SynStack()
    if !exists("*synstack")
      return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
  endfunc

  function! s:PlaceholderImgTag(size)
    let url = 'http://dummyimage.com/' . a:size . '/000000/555555'
    let [width,height] = split(a:size, 'x')
    execute "normal a<img src=\"".url."\" width=\"".width."\" height=\"".height."\" />"
    endfunction
  command! -nargs=1 PlaceholderImgTag call s:PlaceholderImgTag(<f-args>)
"}}}"

" Themes, Commands, etc  ----------------------------------------------------{{{
" Theme
  syntax enable
  colorscheme OceanicNext
  set background=dark
" highlightt the current line number
  hi CursorLineNR guifg=#ffffff
" no need to fold things in markdown all the time
  let g:vim_markdown_folding_disabled = 1
" turn on spelling for markdown files
  autocmd BufRead,BufNewFile *.md setlocal spell complete+=kspell
" highlight bad words in red
  hi SpellBad guibg=#ff2929 guifg=#ffffff" ctermbg=224
" disable markdown auto-preview. Gets annoying
  let g:instant_markdown_autostart = 0
" Keep my termo window open when I navigate away
  autocmd TermOpen * set bufhidden=hide
"}}}

" Fold, gets it's own section  ----------------------------------------------{{{

  function! MyFoldText() " {{{
      let line = getline(v:foldstart)

      let nucolwidth = &fdc + &number * &numberwidth
      let windowwidth = winwidth(0) - nucolwidth - 3
      let foldedlinecount = v:foldend - v:foldstart

      " expand tabs into spaces
      let onetab = strpart('          ', 0, &tabstop)
      let line = substitute(line, '\t', onetab, 'g')

      let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
      let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
      return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
  endfunction " }}}

  function! JavaScriptFold() "{{{
    " syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
    setlocal foldmethod=syntax
    setlocal foldlevel=99
    echo "hello"
    syn region foldBraces start=/{/ skip=/\(\/\/.*\)\|\(\/.*\/\)/ end=/}/ transparent fold keepend extend
  endfunction "}}}

  " function! HTMLFold() "{{{
  "   " syn sync fromstart
  "   set foldmethod=syntax
  "   syn region HTMLFold start=+^<\([^/?!><]*[^/]>\)\&.*\(<\1\|[[:alnum:]]\)$+ end=+^</.*[^-?]>$+ fold transparent keepend extend
  "   syn match HTMLCData "<!\[CDATA\[\_.\{-}\]\]>" fold transparent extend
  "   syn match HTMLCommentFold "<!--\_.\{-}-->" fold transparent extend
  " endfunction "}}}

  set foldtext=MyFoldText()

  autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
  autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

  autocmd FileType vim setlocal fdc=1
  set foldlevel=99
" Space to toggle folds.
  nnoremap <Space> za
  vnoremap <Space> za
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevel=0

  " au FileType html call HTMLFold()
  " autocmd FileType html setlocal foldmethod=syntax
  autocmd FileType html setlocal fdl=99

  " autocmd FileType javascript call JavaScriptFold()
  autocmd FileType javascript,html,css,scss,typescript setlocal foldlevel=99
  autocmd FileType javascript,typescript,css,scss,json setlocal foldmethod=marker
  autocmd FileType javascript,typescript,css,scss,json setlocal foldmarker={,}
  autocmd FileType coffee setl foldmethod=indent
  " au FileType html nnoremap <buffer> <leader>F zfat
" }}}

" NERDTree ------------------------------------------------------------------{{{

  map <F7> :NERDTreeToggle<CR>
  autocmd StdinReadPre * let s:std_in=1
  " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  let NERDTreeShowHidden=1
  let g:NERDTreeWinSize=45
  let g:NERDTreeAutoDeleteBuffer=1
" NERDTress File highlighting
  function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  endfunction

  call NERDTreeHighlightFile('jade', 'green', 'none', 'green', 'none')
  call NERDTreeHighlightFile('md', 'blue', 'none', '#6699CC', 'none')
  call NERDTreeHighlightFile('config', 'yellow', 'none', '#d8a235', 'none')
  call NERDTreeHighlightFile('conf', 'yellow', 'none', '#d8a235', 'none')
  call NERDTreeHighlightFile('json', 'green', 'none', '#d8a235', 'none')
  call NERDTreeHighlightFile('html', 'yellow', 'none', '#d8a235', 'none')
  call NERDTreeHighlightFile('css', 'cyan', 'none', '#5486C0', 'none')
  call NERDTreeHighlightFile('scss', 'cyan', 'none', '#5486C0', 'none')
  call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', 'none')
  call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', 'none')
  call NERDTreeHighlightFile('ts', 'Blue', 'none', '#6699cc', 'none')
  call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', 'none')
  call NERDTreeHighlightFile('gitconfig', 'black', 'none', '#686868', 'none')
  call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#7F7F7F', 'none')
"}}}

" Snipppets -----------------------------------------------------------------{{{

" Enable snipMate compatibility feature.
  let g:neosnippet#enable_snipmate_compatibility = 1
  imap <C-k>     <Plug>(neosnippet_expand_or_jump)
  smap <C-k>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-k>     <Plug>(neosnippet_expand_target)
" Tell Neosnippet about the other snippets
  let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/neosnippets, ~/Github/ionic-snippets, ~/.vim/bundle/angular-vim-snippets/snippets'

" SuperTab like snippets behavior.
  imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: pumvisible() ? "\<C-n>" : "\<TAB>"
  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: "\<TAB>"

"}}}

"Neoterm config -------------------------------------------------------------{{{
let g:neoterm_position = 'vertical'
let g:neoterm_automap_keys = ',tt'

nnoremap <silent> <f10> :TREPLSendFile<cr>
nnoremap <silent> <f9> :TREPLSend<cr>
vnoremap <silent> <f9> :TREPLSend<cr>

" run set test lib
nnoremap <silent> ,rt :call neoterm#test#run('all')<cr>
nnoremap <silent> ,rf :call neoterm#test#run('file')<cr>
nnoremap <silent> ,rn :call neoterm#test#run('current')<cr>
nnoremap <silent> ,rr :call neoterm#test#rerun()<cr>

" Useful maps
" hide/close terminal
nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> ,tc :call neoterm#kill()<cr>

" Rails commands
command! Troutes :T rake routes
command! -nargs=+ Troute :T rake routes | grep <args>
command! Tmigrate :T rake db:migrate

" Git commands
command! -nargs=+ Tg :T git <args>

"---}}} 



" Typescript & Javscript omni complete --------------------------------------{{{
  let g:vimjs#casesensistive = 1
  let g:vimjs#smartcomplete = 1
  set completeopt-=preview
  " autocmd FileType typescript setlocal completeopt+=
  let g:typescript_indent_disable = 1
  let g:tsuquyomi_disable_quickfix = 1
  let g:vim_json_syntax_conceal = 0
  let g:deoplete#omni_patterns = {}
  let g:deoplete#omni_patterns.typescript=[
                \'[^. \t0-9]\.\w*',
                \'[^. \t0-9]\->\w*',
                \'[^. \t0-9]\::\w*',
                \'\s[A-Z][a-z]',
                \'^\s*@[A-Z][a-z]'
                \]
"}}}

" vim-python ----------------------------------------------------------------{{{

  let g:python_host_prog = '/usr/bin/python2.7'
  let g:python3_host_prog = '/usr/bin/python3.5'
" }}}
" Filetype specific settings ------------------------------------------------{{{

au FileType gitcommit set tw=72
autocmd BufNewFile,BufReadPost .bash_aliases* set filetype=sh
autocmd BufNewFile,BufReadPost *.yml setl sw=2 ts=2
autocmd BufNewFile,BufReadPost *.js setl sw=2 ts=2
autocmd BufNewFile,BufReadPost *.coffee setl sw=2 ts=2
autocmd BufNewFile,BufReadPost *.hbs setl sw=2 ts=2
autocmd BufNewFile,BufReadPost *.html setl sw=2 ts=2
autocmd BufNewFile,BufReadPost *.rb setl sw=2 ts=2
autocmd BufNewFile,BufReadPost *.rs setl sw=4 ts=4 tw=100 cc=101
autocmd BufNewFile,BufReadPost *.py setl sw=2 ts=2 tw=79 cc=80 nocindent
autocmd BufNewFile,BufReadPost *.rs hi link rustCommentLineDoc Comment

"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
	"如果文件类型为.sh文件 
	if &filetype == 'sh' 
		call setline(1,"\#!/bin/bash") 
		call append(line("."), "") 
    elseif &filetype == 'python'
        call setline(1,"#!~/.jumbo/bin/python")
        call append(line("."),"# coding=utf-8")
	    call append(line(".")+1, "") 

    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
	    call append(line(".")+1, "")
	endif
    if expand("%:e") == 'cc'
		call append(line(".")+6, "#include<iostream>")
		call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include<stdio.h>")
		call append(line(".")+7, "")
	endif
	if expand("%:e") == 'h'
		call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
		call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
		call append(line(".")+8, "#endif")
	endif
	if &filetype == 'java'
		call append(line(".")+6,"public class ".expand("%:r"))
		call append(line(".")+7,"")
	endif
	"新建文件后，自动定位到文件末尾
endfunc 
"autocmd BufNewFile * normal G

"}}}

" Compile Run ----------------------------------------------------------------{{{
    autocmd FileType swift  nmap <F5> <ESC>:w<bar> :rightbelow vertical split <bar> :term time swift  %<CR>        
    autocmd FileType go     nmap <F5> <ESC>:w<bar> :rightbelow vertical split <bar> :term time go run  %<CR>        
    autocmd FileType ruby   nmap <F5> <ESC>:w<bar> :rightbelow vertical split <bar> :term time ruby   %<CR>        
    autocmd FileType python nmap <F5> <ESC>:w<bar> :rightbelow vertical split <bar> :term time python  %<CR>
    autocmd FileType rust   nmap <F5> <ESC>:w<bar> :rightbelow vertical split <bar> :term time cargo run  %<CR>

    "  autocmd FileType swift  nmap <F5> :call RunWith("swift  %")<cr>
" }}}
" Rust racer ----------------------------------------------------------------{{{
  let g:racer_cmd = "racer"
  let $RUST_SRC_PATH= "/home/zk/rust-src/rust/src"
  let g:racer_experimental_completer = 1

" Run cargo test and open output in new buffer
command! Ctest call s:RunCargoTest()
function! s:RunCargoTest()
    let winnr = bufwinnr('^_cargo_test')
    let curnr = bufwinnr('%')

    if ( winnr >= 0 )
        execute winnr . 'wincmd w'
    else
        vert new _cargo_test
        set ft=cargo
        setlocal buftype=nofile bufhidden=hide noswapfile nobuflisted
    endif

    execute 'normal ggdG'
    read! cargo test --color=never
    call cursor(1, 1)
    execute curnr . 'wincmd w'
endfunction
nnoremap <silent> <F8> :silent :Ctest<CR>
" }}}
" Emmet custoo mization -------------------------------------------------------{{{
" Enable Emmet in all modes
  let g:user_emmet_mode='a'
" Remapping <C-y>, just doesn't cut it.
  function! s:expand_html_tab()
" try to determine if we're within quotes or tags.
" if so, assume we're in an emmet fill area.
   let line = getline('.')
   if col('.') < len(line)
     let line = matchstr(line, '[">][^<"]*\%'.col('.').'c[^>"]*[<"]')
     if len(line) >= 2
        return "\<C-n>"
     endif
   endif
" expand anything emmet thinks is expandable.
  if emmet#isExpandable()
    return "\<C-y>,"
  endif
" return a regular tab character
   return "\<tab>"
   endfunction
   autocmd FileType html,markdown imap <buffer><expr><tab> <sid>expand_html_tab()

   let g:use_emmet_complete_tag = 1
   let g:user_emmet_install_global = 0
   autocmd FileType html,css,ejs EmmetInstall
"}}}

" unite ---------------------------------------------------------------------{{{
"
  let g:unite_data_directory='~/.nvim/.cache/unite'
  let g:unite_source_history_yank_enable=1
  let g:unite_prompt='» '
  let g:unite_source_rec_async_command =['ag', '--follow', '--nocolor', '--nogroup','--hidden', '-g', '', '--ignore', '.git', '--ignore', '*.png', '--ignore', 'lib']

  nnoremap <silent> <c-p> :Unite -auto-resize -start-insert -direction=botright file_rec/neovim2<CR>
  nnoremap <silent> <leader>c :Unite -auto-resize -start-insert -direction=botright colorscheme<CR>
  nnoremap <silent> <leader>u :Unite neobundle/update<CR>

" Custom mappings for the unite buffer
  autocmd FileType unite call s:unite_settings()

  function! s:unite_settings() "{{{
    " Enable navigation with control-j and control-k in insert mode
    imap <buffer> <C-j>   <Plug>(unite_select_next_line)
    imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  endfunction "}}}

" Git from unite...ERMERGERD ------------------------------------------------{{{
let g:unite_source_menu_menus = {} " Useful when building interfaces at appropriate places
let g:unite_source_menu_menus.git = {
    \ 'description' : 'Fugitive interface',
    \}
  let g:unite_source_menu_menus.git.command_candidates = [
    \[' git status', 'Gstatus'],
    \[' git diff', 'Gvdiff'],
    \[' git commit', 'Gcommit'],
    \[' git stage/add', 'Gwrite'],
    \[' git checkout', 'Gread'],
    \[' git rm', 'Gremove'],
    \[' git cd', 'Gcd'],
    \[' git push', 'exe "Git! push " input("remote/branch: ")'],
    \[' git pull', 'exe "Git! pull " input("remote/branch: ")'],
    \[' git pull rebase', 'exe "Git! pull --rebase " input("branch: ")'],
    \[' git checkout branch', 'exe "Git! checkout " input("branch: ")'],
    \[' git fetch', 'Gfetch'],
    \[' git merge', 'Gmerge'],
    \[' git browse', 'Gbrowse'],
    \[' git head', 'Gedit HEAD^'],
    \[' git parent', 'edit %:h'],
    \[' git log commit buffers', 'Glog --'],
    \[' git log current file', 'Glog -- %'],
    \[' git log last n commits', 'exe "Glog -" input("num: ")'],
    \[' git log first n commits', 'exe "Glog --reverse -" input("num: ")'],
    \[' git log until date', 'exe "Glog --until=" input("day: ")'],
    \[' git log grep commits',  'exe "Glog --grep= " input("string: ")'],
    \[' git log pickaxe',  'exe "Glog -S" input("string: ")'],
    \[' git index', 'exe "Gedit " input("branchname\:filename: ")'],
    \[' git mv', 'exe "Gmove " input("destination: ")'],
    \[' git grep',  'exe "Ggrep " input("string: ")'],
    \[' git prompt', 'exe "Git! " input("command: ")'],
    \] " Append ' --' after log to get commit info commit buffers
  nnoremap <silent> <Leader>g :Unite -direction=botright -silent -buffer-name=git -start-insert menu:git<CR>
"}}}
" Custom :FZF function
" Brew install fzf
  " map <c-p> :FZF<CR>
"   tmap <c-p> <c-\><c-n>:FZF<CR>
  map <leader>a :Ag<CR>
"   tmap <leader>a <c-\><c-n>:Ag<CR>
"
"   vmap <leader>aw y:Ag <C-r>0<CR>
" " nmap <leader>aw :Ag <C-r><C-w>
"   map <leader>h :History<CR>
"   tmap <leader>h <c-\><c-n>:History<CR>
"   map <leader>l :Lines<CR>
"}}}

" Use windows  terminate.------------------------------------------------------{{{
" terminal emulator
"""""""""""""""
"tnoremap <Esc> <C-\><C-n>

" Move between windows
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l


" TERMINAL AND NEOTERM
nnoremap <F3> :call ToggleInsertTerminal()<CR>
inoremap <F3> <ESC>:call ToggleInsertTerminal()<CR>
tnoremap <F3> <C-\><C-n>:call ToggleInsertTerminal()<CR>
nnoremap  <F4> :call Ttoggle()<CR>
tnoremap  <F4> <C-\><C-n>:call Ttoggle()<CR>

let s:neoterm_is_open=0
function! Ttoggle()
    if s:neoterm_is_open
        Tclose
        let s:neoterm_is_open=0
    else
        Topen
        let s:neoterm_is_open=1
    endif
endfunction

let s:prev_window=-1
function! ToggleInsertTerminal()
    if s:neoterm_is_open == 0
        call Ttoggle()
    endif

    if s:prev_window == -1
        let s:prev_window=winnr()
        exec bufwinnr(g:neoterm.last().buffer_id) . "wincmd w"
        startinsert
    else
        exec s:prev_window . "wincmd w"
        let s:prev_window=-1
    endif
endfunction

" neoterm
let g:neoterm_size = '60'

abbreviate E' È
abbreviate ~' `

" Handle insert mode when entering the buffer. 
:au BufEnter * if &buftype == 'terminal' | :startinsert | endif




" Window split settings
" F12 switch 

highlight TermCursor ctermfg=red guifg=red
"set splitbelow
"set splitright

" Terminal settings
tnoremap <Leader><ESC> <C-\><C-n>
tnoremap q  bd!
" Window navigation function
" Make ctrl-h/j/k/l move between windows and auto-insert in terminals
func! s:mapMoveToWindowInDirection(direction)
    func! s:maybeInsertMode(direction)
        stopinsert
        execute "wincmd" a:direction

        if &buftype == 'terminal'
            startinsert!
        endif
    endfunc

    execute "tnoremap" "<silent>" "<C-" . a:direction . ">"
                \ "<C-\\><C-n>"
                \ ":call <SID>maybeInsertMode(\"" . a:direction . "\")<CR>"
    execute "nnoremap" "<silent>" "<C-" . a:direction . ">"
                \ ":call <SID>maybeInsertMode(\"" . a:direction . "\")<CR>"
endfunc
for dir in ["h", "j", "l", "k"]
    call s:mapMoveToWindowInDirection(dir)
endfor
 "}}}

" Not used to use terminate.  Navigate between vim buffers and tmux panels ------------------------------{{{
  "let g:tmux_navigator_no_mappings = 1
  "nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
  "nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
  "nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
  "nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
  "nnoremap <silent> <C-;> :TmuxNavigatePrevious<cr>
  "tmap <C-j> <C-\><C-n>:TmuxNavigateDown<cr>
  "tmap <C-k> <C-\><C-n>:TmuxNavigateUp<cr>
  "tmap <C-l> <C-\><C-n>:TmuxNavigateRight<cr>
  "tmap <C-h> <C-\><C-n>:TmuxNavigateLeft<CR>
  "tmap <C-;> <C-\><C-n>:TmuxNavigatePrevious<cr>
"}}}

" vim-airline ---------------------------------------------------------------{{{
  let g:airline#extensions#tabline#enabled = 1
  set hidden
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline#extensions#tabline#show_tab_nr = 1
  let g:airline_powerline_fonts = 1
  let g:airline_theme='oceanicnext'
  cnoreabbrev <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'Sayonara' : 'x'
  tmap <leader>x <c-\><c-n>:bp! <BAR> bd! #<CR>
  nmap <leader>t :term<cr>
  nmap <leader>, :bnext<CR>
  tmap <leader>, <C-\><C-n>:bnext<cr>
  nmap <leader>. :bprevious<CR>
  tmap <leader>. <C-\><C-n>:bprevious<CR>
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  tmap <leader>1  <C-\><C-n><Plug>AirlineSelectTab1
  tmap <leader>2  <C-\><C-n><Plug>AirlineSelectTab2
  tmap <leader>3  <C-\><C-n><Plug>AirlineSelectTab3
  tmap <leader>4  <C-\><C-n><Plug>AirlineSelectTab4
  tmap <leader>5  <C-\><C-n><Plug>AirlineSelectTab5
  tmap <leader>6  <C-\><C-n><Plug>AirlineSelectTab6
  tmap <leader>7  <C-\><C-n><Plug>AirlineSelectTab7
  tmap <leader>8  <C-\><C-n><Plug>AirlineSelectTab8
  tmap <leader>9  <C-\><C-n><Plug>AirlineSelectTab9
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9
"}}}

 " Linting -------------------------------------------------------------------{{{


  function! neomake#makers#ft#javascript#eslint()
      return {
          \ 'args': ['-f', 'compact'],
          \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
          \ '%W%f: line %l\, col %c\, Warning - %m'
          \ }
  endfunction
  let g:neomake_javascript_enabled_makers = ['eslint']
  autocmd! BufWritePost * Neomake
  function! JscsFix()
      let l:winview = winsaveview()
      % ! jscs -x
      call winrestview(l:winview)
  endfunction
  command JscsFix :call JscsFix()
  noremap <leader>j :JscsFix<CR>
"}}}

" My function  ---------------------------------------------------------------{{{ 

" Workspace Setup
" ----------------
function! DefaultWorkspace()
    " Rough num columns to decide between laptop and big monitor screens
    let numcol = 2
    if winwidth(0) >= 220
        let numcol = 3
    endif

    if numcol == 3
        e term://zsh
        file Shell\ Two
        vnew
    endif

    vsp term: //~/27000:/bin/zsh
    file Context
    sp term://zsh
    file Shell\ One
    wincmd k
    resize 4
    wincmd h
endfunction
command! -register DefaultWorkspace call DefaultWorkspace()

" }}}
endif

