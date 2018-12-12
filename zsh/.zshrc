export PATH=$HOME/bin:/usr/local/bin:/$HOME/scr/man/:$PATH

export ZSH="/home/hustler/.oh-my-zsh"

ZSH_THEME="ys"

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# plugins
plugins=(rails git ruby python)

# load custom configuration
source ~/.config/zsh/aliases.zsh
