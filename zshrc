# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="norm-phil"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rbenv battery pip lol mercurial github \
         git command-not-found dircycle dirpersist encode64 \
         extract git-flow lol )

source $ZSH/oh-my-zsh.sh

# Customize to your needs... Absolutely!!


# miscellaneous aliases {{{

alias xclip='xclip -selection clipboard'
alias ls='ls --color=auto'
alias ll="ls -l"
alias la="ls -lA"
alias locate="locate -i"
alias grep="grep --color=auto -E"
alias cal='cal -3m'
alias open='xdg-open'

# end aliases }}}

# variables {{{

export EDITOR="vim"

export PATH="/home/phil/.gem/ruby/1.8/bin:$PATH"
export PATH="/home/phil/.local/bin:$PATH"

export PYTHONPATH="~/.local"

# get octave to use gnuplots pretty interface
export GNUTERM="wxt"

# end variables }}}

