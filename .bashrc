PS1='\[$(tput bold)\]> \[$(tput sgr0)\]'
alias ls='ls -XF --color=auto'
alias r='ranger'
alias grep='grep --color=auto'
alias diff='diff --color=always'
alias aria2c='aria2c --summary-interval=0'
alias xcopy='xclip -i -selection clipboard'
alias xpaste='xclip -o -selection clipboard'
function run {
    "$@" &> /dev/null & disown %
}
unset HISTFILE
