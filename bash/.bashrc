if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

PS1='\[$(tput bold)\]> \[$(tput sgr0)\]'
alias ls='ls -XF --color=auto'
alias l='ls -XF --color=auto'
alias p='pwd'
alias r='ranger'
alias v='nvim'
alias c='history -c; tmux clear-history; clear'
alias we='watchexec -c -d 10'
alias grep='grep --color=auto'
alias diff='diff -u --color=auto'
alias aria2c='aria2c --summary-interval=0'
alias gdb='gdb -quiet'
function run {
    "$@" &> /dev/null & disown %
}
unset HISTFILE
export LESSHISTFILE=-
export VISUAL=nvim
export EDITOR=nvim
export BROWSER=firefox

shopt -s globstar

. /home/ava/.nix-profile/etc/profile.d/nix.sh
function nx {
    nix-shell --pure --command "$*"
}
