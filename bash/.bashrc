if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

PS1='\[$(tput bold)\]> \[$(tput sgr0)\]'
alias ls='ls -XF --color=auto'
alias l='ls -XF --color=auto'
alias r='ranger'
alias v='nvim'
alias c='clear && tmux clear-history'
alias grep='grep --color=auto'
alias diff='diff --color=always'
alias aria2c='aria2c --summary-interval=0'
function run {
    "$@" &> /dev/null & disown %
}
unset HISTFILE
export VISUAL=nvim
export EDITOR=nvim
export BROWSER=firefox

shopt -s globstar

. /home/ava/.nix-profile/etc/profile.d/nix.sh
function nx {
    nix-shell --pure --command "$*"
}
