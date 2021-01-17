" ##############################################################################
" # nvim plugin                                                                #
" # Made for nvim                                                              #
" # IB Dwi Satria K, https://dskusuma.dev/                                     #
" # ────────────────────────────────────────────────────────────────────────── #
" # Plugins List                                                               #
" # 1. coc.nvim                                                                #
" # 2. denite.nvim                                                             #
" # 3. deoplete.nvim                                                           #
" # 4. auto-pairs                                                              #
" # 5. vim-reason-plus                                                         #
" # 6. LanguageClient-neovim                                                   #
" # 7. vim-prettier                                                            #
" # 8. vim-polyglot                                                            #
" # 9. vim-easymotion                                                          #
" # 10. indentLine                                                             #
" # 11. vim-signature                                                          #
" # 12. vim-fugitive                                                           #
" # 13. vim-rhubarb                                                            #
" # 14. gv.vim                                                                 #
" # 15. vim-signify                                                            #
" # 16. vim-rooter                                                             #
" # 17. nvim-colorizer.lua                                                     #
" # 18. vim-airline                                                            #
" # 19. vim-airline-themes                                                     #
" # 20. onedark.vim                                                            #
" # 21. fzf                                                                    #
" # 22. fzf.vim                                                                #
" # 23. vim-wakatime                                                           #
" # 24. vim-startify                                                           #
" ##############################################################################
"
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " ========================================================================== 
  " DEVELOPER EXPERIENCES                                                  
  " Plugins that improves developer experiences; make it easier to code
  " using vim.
  " ========================================================================== 
  " Conquer of Completion (https://github.com/neoclide/coc.nvim)
  " IDE-like setup for VIM 
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Install extension / plugins from marketplace
  " :CocInstall coc-marketplace, then CocList -> marketplace
  " coc-prettier
  " coc-snippets
  " coc-eslint
  " coc-marketplace
  " coc-explorer
  " coc-diagnostic
  " coc-markdownlint
  " coc-tsserver
  " coc-reason
  " coc-python
  " coc-json
  " coc-flutter
  " coc-css
   
  " Denite (https://github.com/Shougo/denite.nvim)
  if has('nvim')
    Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/denite.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif

  " Deoplete (https://github.com/Shougo/deoplete.nvim)
  " provides an extensible and asynchronous completion framework for neovim/Vim8.
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif

  " auto-pairs (https://github.com/jiangmiao/auto-pairs)
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'

  " vim-reason-plus (https://github.com/reasonml-editor/vim-reason-plus)
  " Provide syntax highlight, snippets for Reason, and allows related 
  " features to recognize Reason
  Plug 'reasonml-editor/vim-reason-plus'

  " LanguageClient for Neovim (https://github.com/autozimu/LanguageClient-neovim)
  " Add Language Server Protocol support for vim and neovim
  " LSP reference: https://langserver.org/
  Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

  " vim-prettier (https://github.com/prettier/vim-prettier)
  " vim plugin wrapper for prettier
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

  " vim-polyglot (https://github.com/sheerun/vim-polyglot)
  " add syntax highlighting
  Plug 'sheerun/vim-polyglot'

  " easymotion (https://github.com/easymotion/vim-easymotion)
  " provide simpler way to use vim's motion.
  Plug 'easymotion/vim-easymotion'

  " indentline (https://github.com/Yggdroot/indentLine)
  " This plugin is used for displaying thin vertical lines at each indentation level for code indented with spaces.
  Plug 'Yggdroot/indentLine'

  " vim-signature (https://github.com/kshenoy/vim-signature)
  " plugin to place, toggle and display marks.
  Plug 'kshenoy/vim-signature'

  " fugitive.vim (https://github.com/tpope/vim-fugitive)
  " Git plugin for vim. Use git from vim command
  Plug 'tpope/vim-fugitive'

  " rhubarb.vim (https://github.com/tpope/vim-rhubarb)
  " Github plugin  for vim. Open project's github link
  Plug 'tpope/vim-rhubarb'

  " gv.vim (https://github.com/junegunn/gv.vim)
  " Git commit browser. View commit in a tree format.
  Plug 'junegunn/gv.vim'

  " Signify (https://github.com/mhinz/vim-signify)
  " Show git differences in vim
  Plug 'mhinz/vim-signify'

" vim-rooter (https://github.com/airblade/vim-rooter)
  " Change the working directory to the project root when open 
  " a file or folder
  Plug 'airblade/vim-rooter'

  " colorizer.lu (https://github.com/norcalli/nvim-colorizer.lua)
  " Show hexcode color in editor
  Plug 'norcalli/nvim-colorizer.lua'

  " ========================================================================== 
  " VIM's UI                                                  
  " Plugins that improves the vim's UI
  " ========================================================================== 
  " vim-airline (https://github.com/vim-airline/vim-airline , https://github.com/vim-airline/vim-airline-themes) 
  " status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " onedark.vim (https://github.com/joshdick/onedark.vim)
  " Onedark theme from vim
  Plug 'joshdick/onedark.vim'    
 
 
  " fzf (https://github.com/junegunn/fzf , https://github.com/junegunn/fzf.vim)
  " Command-line fuzzy finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Wakatime (https://github.com/wakatime/vim-wakatime)
  " Wakatime integration for vim
  Plug 'wakatime/vim-wakatime' 

  " Startify (https://github.com/mhinz/vim-startify)
  " 'fancy' startscreen for vim 
  Plug 'mhinz/vim-startify'

call plug#end()


