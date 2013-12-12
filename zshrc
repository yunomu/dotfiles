alias vi='vim'
alias ls='ls -hF'
alias ll='ls -l'
alias la='ls -A'
alias history='history 1'
alias h='history | sed "s/ *[0-9]* *//"'

alias screen="screen -D -RR"
alias emacs="emacs -nw"

alias eman='erl -man'
alias emake='erl -make'
alias erl-dev='erl -pz ebin deps/*/ebin'

alias -g G='|grep'
alias -g L='|less'
alias -g L2='2>&1 |less'
alias -g V='|vim -'

export HISTFILE=$HOME/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt extended_history
setopt share_history

#autoload -U compinit
#compinit -u

bindkey -e

bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

export EDITOR=vi

export PATH=$PATH:/opt/local/bin:/opt/local/sbin

# prompt
PROMPT="%{[32m%}%n@%m %{[31m%}%~%{[m%}
%# "

##
## VCS and RVM info in prompt.
##

# http://qiita.com/items/8d5a627d773758dd8078
+vi-check-git-repository-info() {
    local email="$(git config --local --get user.email |cut -d. -f 1)"

    if [[ "$1" = 0 ]]; then
        if [[ -n "$email" ]]; then
            hook_com[misc]+=":$email"
        else
            hook_com[misc]=""
        fi
    fi

    if [[ "$1" = 1 ]]; then
        if [[ -z "$email" ]]; then
            hook_com[misc]+="- WHO ARE YOU? - "
        else
            hook_com[misc]=""
        fi
    fi
}

# http://quickhack.net/nom/blog/2013-07-06-who-are-you-on-the-repository.html
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s%m)-[%b]' '%m'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
zstyle ':vcs_info:git+set-message:*' hooks check-git-repository-info
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_1_" ]] && psvar[1]="$vcs_info_msg_1_"
    [[ -n "$vcs_info_msg_0_" ]] && psvar[2]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%F{red}%1v%f|)%2(v|%2v|)%3(v|%3v|)"
