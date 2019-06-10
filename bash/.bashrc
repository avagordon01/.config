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

function bulk {
    set -eu pipefail

    command="mv -vi --"

    tmp0=$(mktemp)
    tmp1=$(mktemp)
    script=$(mktemp)

    cp /dev/stdin ${tmp0}
    cp ${tmp0} ${tmp1}

    $EDITOR ${tmp1}
    #TODO handle spaces in filenames
    paste -d ' ' ${tmp0} ${tmp1} | sed -e "s/^/${command} /" > ${script}
    $EDITOR ${script}
    sh ${script}

    rm -rf ${tmp0} ${tmp1} ${script}
}
