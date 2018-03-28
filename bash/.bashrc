set -o vi
PS1='\[$(tput bold)\]> \[$(tput sgr0)\]'
alias ls='ls -XF --color=auto'
alias l='ls -XF --color=auto'
alias r='ranger'
alias v='nvim'
alias c='clear'
alias weechat='weechat -d ~/.config/weechat'
alias grep='grep --color=auto'
alias diff='diff --color=always'
alias aria2c='aria2c --summary-interval=0'
alias xcopy='xclip -i -selection clipboard'
alias xpaste='xclip -o -selection clipboard'
alias tcopy='tmux show-buffer | xclip -i -selection clipboard'
function run {
    "$@" &> /dev/null & disown %
}
unset HISTFILE
export PATH="/home/ava/.cargo/bin:$PATH"
export VISUAL=nvim
export EDITOR="$VISUAL"
. /home/ava/.nix-profile/etc/profile.d/nix.sh
function nx {
    nix-shell --pure --command "$*"
}
