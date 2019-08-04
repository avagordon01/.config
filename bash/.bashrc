if command -v tmux>/dev/null; then
    [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

PS1='\[$(tput bold)\]> \[$(tput sgr0)\]'

alias ls='ls -XF --color=auto'
alias l='ls -XF --color=auto'
alias ll='ls -XFl --color=auto'
alias t='tree -FC'
alias tt='tree -FCpugh'
alias ff='$BROWSER'
alias p='pwd'
alias r='ranger'
alias v='nvim'
alias c='history -c; tmux clear-history; clear'
alias we='watchexec -c -d 10'
alias loop='while true; do fc -s; sleep 1; done'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias gdb='gdb -q'

function run {
    "$@" &> /dev/null & disown %
}

unset HISTFILE
export LESSHISTFILE=-
export VISUAL=nvim
export EDITOR=nvim
export BROWSER=firefox

if [ -e /home/ava/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ava/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
