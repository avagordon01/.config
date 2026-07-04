PS1="[\u@\h \W]\$ "

alias ls='ls --color=auto'
function cdiff() {
    diff --color=always --unified "$@" | less -r
}

shopt -s globstar nocaseglob cdspell autocd
