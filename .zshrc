alias vi='vim'
alias ls='ls -hF'
alias ll='ls -l'
alias la='ls -A'
alias history='history 1'
alias h='history | sed "s/ *[0-9]* *//"'
alias -g G='|grep'
alias -g L='|less'
alias -g V='|vim -'

export HISTFILE=$HOME/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt extended_history

#autoload -U compinit
#compinit -u

bindkey -e

bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

PROMPT="
%n@%m %~
%# "

export PATH=$PATH:/opt/local/bin:/opt/local/sbin
