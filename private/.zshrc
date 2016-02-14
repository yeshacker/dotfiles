# Autoloading MIME handler
autoload -U zsh-mime-setup
zsh-mime-setup

# load zgen
source "${HOME}/repos.local/zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen prezto editor key-bindings 'emacs'
    zgen prezto editor dot-expansion 'yes'

    zgen prezto terminal auto-title 'yes'
    
    zgen prezto 'tmux:auto-start' remote 'yes'
    zgen prezto 'tmux:iterm' integrate 'yes'

    zgen prezto 'git:log:context' format 'oneline'

    zgen prezto syntax-highlighting highlighters \
	 'main' \
	 'brackets' \
	 'pattern' \
	 'cursor' \
	 'root'
    
    zgen prezto prompt theme 'cloud' 'ƒ' 'green' 'black'    

    zgen prezto

    zgen prezto environment
    zgen prezto terminal
    zgen prezto directory
    zgen prezto tmux
    zgen prezto osx
    zgen prezto homebrew
    zgen prezto archive
    zgen prezto editor
    zgen prezto git
    zgen prezto node
    zgen prezto gpg
    zgen prezto haskell
    zgen prezto history
    zgen prezto utility
    zgen prezto completion
    zgen prezto fasd
    zgen prezto syntax-highlighting
    zgen prezto history-substring-search
    zgen prezto prompt

    zgen save
fi

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
