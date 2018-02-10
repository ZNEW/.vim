
" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod

" Showing line numbers and length
set number " show line numbers
"set tw=79 " width of document (used by gd)
set nowrap " don't automatically wrap on load
set fo-=t " don't automatically wrap text when typing
set colorcolumn=120
highlight ColorColumn ctermbg=233

"mettre en évidence la ligne sur laquelle se trouve mon curseur
set cursorline
highlight CursorLine guibg=#001000
" Relative line number
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

autocmd BufRead,BufNewFile *.py syntax on
"syntax on

set laststatus=2

"if ( has('win32') || has('win64') )
"    set guifont=Courier_New:h10:cANSI
"endif

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  if  ( has('win32') || has('win64') )
      set lines=60 columns=140
  endif
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

if has('gui_running')
  "set guifont=Inconsolata_for_Powerline:h12    " set fonts for gui vim
  "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
  if( has('win32') || has('win64') )
    "set guifont=DejaVu_Sans_Mono_for_Powerline:h11    " set fonts for gui vim
    set guifont=DejaVuSansMonoForPowerLine_Nerd:h11    " set fonts for gui vim
  else
    "set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11    " set fonts for gui vim
    set guifont=DejaVuSansMonoForPowerLine\ Nerd:h11    " set fonts for gui vim
  endif
  "set transparency=10        " set transparent window
  "call libcallnr("vimtweak.dll", "SetAlpha", 210) 
"  set guioptions=egmrt  " hide the gui menubar
endif

"let g:currentFontName='Inconsolata_for_Powerline'
"let g:currentFontName='DejaVu\ Sans\ Mono\ for\ Powerline'
"let g:currentFontName='DejaVu_Sans_Mono_for_Powerline'
"

