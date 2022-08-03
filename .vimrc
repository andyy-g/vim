"Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'mattn/emmet-vim'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-scripts/closetag.vim'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-endwise'
Plugin 'altercation/vim-colors-solarized'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-syntastic/syntastic'
Plugin 'turbio/bracey.vim'

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

" Utiliser la version sombre de Solarized
set background=dark

" Choix de la police
set guifont=Monaco:h13
set antialias

" Remplacer la touche Esc par ;; (pour retourner au mode normal)
:imap ;; <Esc>
:map ;; <Esc>

" Indentation
set smartindent " Indentation intelligente
set autoindent  " Conserve l'indentation sur une nouvelle ligne
"set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab " Indentation 4
set autoindent noexpandtab tabstop=4 shiftwidth=4

:se mouse+=a

nmap <F6> :NERDTreeToggle<CR>
