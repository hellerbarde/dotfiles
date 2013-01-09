# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#export ZSH_THEME="norm-phil"

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
         git command-not-found dircycle encode64 \
         extract git-flow )

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs... Absolutely!!

# ###############
# zshell Prompt #
# ###############

KEYCHAIN_ENV=~/.keychain-env
keychain --eval --agents ssh -Q --quiet ~/.ssh/id_rsa >$KEYCHAIN_ENV
. $KEYCHAIN_ENV >/dev/null

if [[ "$(id -u)" = "0" ]]; then
    # if root, make prompt red
    PROMPT_COLOR="$fg[red]";
else
    # else its yellow
    PROMPT_COLOR="$fg[yellow]";
fi

PROMPT='%{$PROMPT_COLOR%}λ %{$fg[green]%}%c $(git_prompt_custom)%{$PROMPT_COLOR%}» %{$reset_color%}'
RPROMPT='%{$PROMPT_COLOR%}%m%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[blue]%}?%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}+%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}R%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}-%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}U%{$reset_color%}"

git_prompt_custom() {
    PROMPT="$(git_prompt_info)"
    GIT_STATUS="$(git_prompt_status)"
    if [[ ! "$GIT_STATUS" = "" ]]; then
        PROMPT="$PROMPT%{$fg[blue]%}($GIT_STATUS%{$fg[blue]%}) "
    elif [[ ! "$PROMPT" = "" ]]; then
        PROMPT="$PROMPT "
    fi
    echo $PROMPT
}
# ############
# end prompt #
# ############


# miscellaneous aliases {{{

alias xclip='xclip -selection clipboard'
alias ls='ls --color=auto'
alias ll="ls -l"
alias la="ls -lA"
alias locate="locate -i"
alias grep="grep --color=auto -E"
alias cal='cal -3m'
alias open='xdg-open'

alias  t='python2 ~/projects/python/t/t.py --task-dir ~/tasks --list tasks'
alias th='python2 ~/projects/python/t/t.py --task-dir ~/tasks --list tasks_houseofkids'
alias tp='python2 ~/projects/python/t/t.py --task-dir . --list .tasks'


# end aliases }}}

# variables {{{

export EDITOR="vim"

export PATH="$HOME/.gem/ruby/1.8/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export PYTHONPATH="$HOME/.local"

# get octave to use gnuplots pretty interface
export GNUTERM="wxt"

# end variables }}}


