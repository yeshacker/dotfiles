# Autoloading MIME handler
autoload -U zsh-mime-setup
zsh-mime-setup

# Activate marker
[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"

# Load z
. `brew --prefix`/etc/profile.d/z.sh

# load zgen
source "${HOME}/repos.local/zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"
    
    zgen oh-my-zsh
    
    # plugins
    zgen oh-my-zsh plugins/atom
    zgen oh-my-zsh plugins/autojump
    zgen oh-my-zsh plugins/bower
    zgen oh-my-zsh plugins/brew
    zgen oh-my-zsh plugins/bundler
    zgen oh-my-zsh plugins/cabal
    zgen oh-my-zsh plugins/capistrano
    zgen oh-my-zsh plugins/catimg
    zgen oh-my-zsh plugins/celery
    zgen oh-my-zsh plugins/coffee
    zgen oh-my-zsh plugins/common-aliases
    zgen oh-my-zsh plugins/dircycle
    zgen oh-my-zsh plugins/docker
    zgen oh-my-zsh plugins/encode64
    zgen oh-my-zsh plugins/fabric
    zgen oh-my-zsh plugins/fasd
    zgen oh-my-zsh plugins/gem
    zgen oh-my-zsh plugins/git-extras
    zgen oh-my-zsh plugins/httpie
    zgen oh-my-zsh plugins/history
    zgen oh-my-zsh plugins/jsontools
    zgen oh-my-zsh plugins/node
    zgen oh-my-zsh plugins/npm
    zgen oh-my-zsh plugins/osx
    zgen oh-my-zsh plugins/pass
    zgen oh-my-zsh plugins/pep8
    zgen oh-my-zsh plugins/pip
    zgen oh-my-zsh plugins/pylint
    zgen oh-my-zsh plugins/python
    #zgen oh-my-zsh plugins/rails
    zgen oh-my-zsh plugins/redis-cli
    zgen oh-my-zsh plugins/tmux
    zgen oh-my-zsh plugins/urltools
    zgen oh-my-zsh plugins/vagrant
    zgen oh-my-zsh plugins/web-search
    zgen oh-my-zsh plugins/zeus  

    # bulk load
    zgen loadall <<EOPLUGINS
	djui/alias-tips
        horosgrisa/autoenv
        b4b4r07/enhancd
        unixorn/git-extra-commands
        arzzen/calc.plugin.zsh
        walesmd/caniuse.plugin.zsh
        voronkovich/mysql.plugin.zsh
        horosgrisa/mysql-colorize
        yonchu/vimman
	poying/zsh-nodejs-plugin
	dirkk/zsh-basex
	caarlos0/zsh-pg
	#paraqles/zsh-plugin-rails
	caarlos0/zsh-open-pr
	jocelynmallon/zshmarks
        chrissicool/zsh-256color
EOPLUGINS
    # ^ can't indent this EOPLUGINS

    # completions
    zgen load vasyharan/zsh-brew-services
    zgen load d12frosted/cabal.plugin.zsh
    zgen load unixorn/docker-helpers.zshplugin
    zgen load felixr/docker-zsh-completion
    zgen load sheax0r/etcdctl-zsh
    zgen load akoenig/gulp.plugin.zsh
    zgen load DimitriSteyaert/Zsh-tugboat    
    zgen load RobSis/zsh-completion-generator
    zgen load zsh-users/zsh-completions
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search
    zgen load tarruda/zsh-autosuggestions

    # theme

    # save all to init script
    zgen save
fi

zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
