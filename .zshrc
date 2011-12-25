alias vi='vim'
alias ls='ls -F'
alias ll='ls -l'
alias la='ls -a'
alias -g G='|grep'
alias -g L='|less'
alias -g V='|vim -'

bindkey -e

bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

PROMPT="
%n@%m %~
%# "

export PATH=$PATH:/opt/local/bin:/opt/local/sbin
