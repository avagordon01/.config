PS1='\[$(tput cup $((${LINES}-1)))$(tput bold)\]> \[$(tput sgr0)\]'

alias ls='ls -XF --color=auto'
alias l='ls -XF --color=auto'
alias ll='ls -XFl --color=auto'
alias t='tree -FC'
alias td='tree -FCd'
alias tt='tree -FCpugh'
alias ff='$BROWSER'
alias p='pwd'
alias c='history -c; tmux clear-history; clear'
alias gdb='gdb -q'
alias nping='ping -f -i 0.2 1.1.1.1'

function run {
    "$@" &> /dev/null & disown %
}
complete -F _command run
complete -F _command prime-run

unset HISTFILE
export LESSHISTFILE=-
export VISUAL=vim
export EDITOR=vim
export BROWSER=firefox

shopt -s nocaseglob
shopt -s cdspell
shopt -s autocd
