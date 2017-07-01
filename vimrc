"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Pierrick Chevallay
" File vimrc
" doc links :
"    http://vimdoc.sourceforge.net/htmldoc/options.html (EN)
"    http://david.blanchet.free.fr/vim/doc/fr62017/options.txt.html  (FR)
"
" Exemple :
"    https://github.com/spf13/spf13-vim/blob/master/.vimrc
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""Environment 
"Basics

" set runtime path to load pathogen
set rtp+=~/.vim/bundle/vim-pathogen
execute pathogen#infect()

"""General 

filetype plugin indent on                       " Indent depend on filetype
syntax on                                       " Enable syntax highlighting
set mouse=a                                     " automatically enable mouse usage
set autochdir                                   " always use file dir.
set virtualedit=onemore                         " allow for cursor beyond last character
set encoding=utf-8                              " Use UTF-8
set wrap                                        "(no) wrap lines
set title                                       " Show <titlestring> value on windows title
"set autoread                                   " refresh if changed
"Backup/Undo
"set backup                                      " backup curr. file
"set backupdir=~/.vim/backup                     " backup director{y,ies}
set backupext=~                                 " append ~ to backups
set confirm                                     " confirm changed files
set noautowrite                                 " never autowrite
set updatecount=50                              " update swp after 50chars
set undolevels=1000                             " maximum number of changes that can be undone


"""Vim UI
"Color
set t_Co=256                                    " Enable 256 colors
syntax enable
"colorscheme pablo
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
colorscheme base16-materia


""Search
set incsearch                                   " Search as you type.
set ignorecase                                  " Ignore case when searching.
set hlsearch                                    " Highlighting search
set smartcase                                   " igncase,except w/capitals

set matchtime=2                                 " time to blink match
set showmatch                                   " tmp-jump to match-bracket


""Folding/Tab
set foldcolumn=4                                " 1 width folding column
set foldmethod=syntax                           " folds are defined by syntax highlighting 
set nofoldenable                                " all folds are open
set autoindent                                  " preserve indentation
set backspace=indent,eol,start                  " smart backspace
set shiftround                                  " be clever with tabs
set shiftwidth=4                                " default 8
set smartindent                                 " see autoindent
set smarttab                                    " tab to 0,4,8 etc.
set softtabstop=4                               " Control how many columns vim uses when you hit Tab in insert mode
set tabstop=4                                   " replace <TAB> w/4 spaces
set copyindent                                  " Copy previous indent when autoindenting a new line
set noexpandtab                                 " no insert space character instead of tab
set expandtab                                   " insert space character instead of tab
set preserveindent                              " preserve as much of the indent structure as possible

""Statusline
"Color

"file info
hi User1 guifg=#191919 guibg=#8ac612
"error
hi User2 guifg=#191919 guibg=#95e454
"buffer info
hi User3 guifg=#191919 guibg=#6aa6c2

set laststatus=2                                " Always show statusline
set statusline=%n\                              "Buffer number
set statusline+=\ %t\ %<%*\                     "File name
set statusline+=%{expand('%:h')}\               "Relative path
set statusline+=%h%m%r\                         "[help flag][modified flag][read only flag]
set statusline+=%=                              "righ alignement
set statusline+=%1*\ %Y\                        "file type
set statusline+=%{&fenc!=''?&fenc:&enc}\        "encodage
"set statusline+=%{&ff=='unix'?'\\n':(&ff=='mac'?'\\r':'\\r\\n')}\  "kind of return carrier
set statusline+=%{&ff}\  "kind of return carrier
set statusline+=%3*\ %9(l:%l/%L%)\              "line number/total line
set statusline+=%6(c:%c%)\                      "colone number
set statusline+=%8([%P]%)\                      "percentage of buffer
set statusline+=%*\%-16{strftime(\"%Y-%m-%d\ %H:%M\")}\  "date


set list                                        " Display unprintable character
set listchars=tab:»·,trail:·,eol:¶,extends:#    " Change symbol for each of these character
set wildignore=.bak,.pyc,.o,.ojb,.,a,           " File patterns ignored when completing file or directory names
        \.pdf,.jpg,.gif,.png,
        \.avi,.mkv,.so
set wildmenu                                    " Show autocomplete menus.
set wildmode=list:longest                       " Mode for wildmenu
set ruler                                       " Show line number, cursor position.
set showmode                                    " Show editing mode
set showcmd                                     " Display incomplete commands.
set visualbell                                  " Error bells are displayed visually.
set number                                      " Show line number
set history=500                                 " Command history


""" Files
" Alias CD to change the dir of the current opened file
"command! CD cd %:p:h


