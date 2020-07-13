if command -v tmux>/dev/null; then
    [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

bottom="\[$(tput cup $(tput lines) 0)\]"
bold="\[$(tput bold)\]"
reset="\[$(tput sgr0)\]"
PS1="${bottom}${bold}> ${reset}"

alias ls='ls -XF --color=auto'
alias l='ls -XF --color=auto'
alias ll='ls -XFl --color=auto'
alias t='tree -FC'
alias td='tree -FCd'
alias tt='tree -FCpugh'
alias ff='$BROWSER'
alias p='pwd'
alias r='ranger'
alias v='nvim'
alias c='history -c; tmux clear-history; clear'
alias we='watchexec -c -d 10'
alias gdb='gdb -q'
alias xcopy='xsel -ib'
alias xpaste='xsel -ob'
alias xclear='xsel -cb'

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

if [ -e /home/ava/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ava/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

_xcut() {
    echo "${READLINE_LINE}" | xsel -ib
    READLINE_LINE=""
}
_xcopy() {
    echo "${READLINE_LINE}" | xsel -ib
}
_xpaste() {
    READLINE_LINE="$(xsel -ob)"
}
bind -m vi -x '"dd": _xcut'
bind -m vi -x '"yy": _xcopy'
bind -m vi -x '"p": _xpaste'

alias nx='nix-shell --option sandbox relaxed'
