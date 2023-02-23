"Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'dense-analysis/ale'
Plugin 'tibabit/vim-templates'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'    " JavaScript support
Plugin 'leafgarland/typescript-vim' " TypeScript syntax
Plugin 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plugin 'neoclide/coc.nvim', {'branch': 'release'} "Autocomplete

call vundle#end()            " required

colorscheme palenight
filetype plugin indent on    " required

" -- Affichage
set title               " Met a jour le titre de votre fenetre ou de
                        " votre terminal
set number              " Affiche le numero des lignes
set ruler               " Affiche la position actuelle du curseur
set wrap	        " Affiche les lignes trop longues sur plusieurs
                        " lignes

set scrolloff=3         " Afficher un minimum de 3 lignes au tour du curseur
                        " (pour le scroll)

" -- Recherche
set ignorecase          " Ignore la casse lors d'une recherche
set smartcase           " Si une recherche contient une majuscule,
                        " re-active la sensibilite a la casse
set incsearch           " Surligne les resultats de recherche pendant la
                        " saisie
set hlsearch            " Surligne les resultats de recherche

" -- Beep
set visualbell          " Empeche Vim de beeper
set noerrorbells        " Empeche Vim de beeper

" Active le comportement 'habituel' de la touche retour en arriere
set backspace=indent,eol,start

" Cache les fichiers lors de l'ouverture d'autres fichiers
set hidden

" Activer la coloration syntaxique
syntax enable

" Choix de la police
set guifont=Monaco:h13
set antialias

" Remplacer la touche Esc par ;; (pour retourner au mode normal)
:imap ;; <Esc>
:map ;; <Esc>

" Ferme automatiquement les parenthèses/guillemets
"inoremap { {<CR>}<Esc>ko
"inoremap ( ()<Esc>ha
"inoremap [ []<Esc>ha
"inoremap " ""<Esc>ha
"inoremap ' ''<Esc>ha
"inoremap ` ``<Esc>ha

" Indentation
set smartindent " Indentation intelligente
set autoindent  " Conserve l'indentation sur une nouvelle ligne
set autoindent noexpandtab tabstop=4 shiftwidth=4 " Indentation de 4

" Activer l'utilisation de la souris
:se mouse+=a

" Templates
let g:tmpl_search_paths = ['~/.vim/templates']
let g:tmpl_auto_initialize = 0

" CoC extensions
let g:coc_global_extensions = ['coc-tsserver']

" F6 pour faire apparaitre le NERDTree
nmap <F6> :NERDTreeToggle<CR>
