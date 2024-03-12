if command -v tmux>/dev/null; then
    [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

PS1='\[$(tput cup $((${LINES}-1)))$(tput bold)\]> \[$(tput sgr0)\]'

alias ls='ls -XF --color=auto'
alias l='ls -XF --color=auto'
alias ll='ls -XFl --color=auto'
alias t='tree -FC'
alias td='tree -FCd'
alias tt='tree -FCpugh'
alias ff='$BROWSER'
alias p='pwd'
alias r='ranger'
alias e='helix'
alias hx='helix'
alias c='history -c; tmux clear-history; clear'
alias we='watchexec -c -d 10'
alias gdb='gdb -q'
alias xcopy='wl-copy'
alias xpaste='wl-paste'
alias xclear='wl-copy -c'
alias nping='ping -f -i 0.2 1.1.1.1'

function run {
    "$@" &> /dev/null & disown %
}
complete -F _command run
complete -F _command prime-run

unset HISTFILE
export LESSHISTFILE=-
export VISUAL=nvim
export EDITOR=nvim
export BROWSER=firefox

_xcut() {
    echo "${READLINE_LINE}" | wl-copy
    READLINE_LINE=""
}
_xcopy() {
    echo "${READLINE_LINE}" | wl-copy
}
_xpaste() {
    READLINE_LINE="$(wl-paste)"
}
bind -m vi -x '"dd": _xcut'
bind -m vi -x '"yy": _xcopy'
bind -m vi -x '"p": _xpaste'
