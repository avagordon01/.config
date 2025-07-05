PS1="[\u@\h \W]\$ "

alias ls='ls --color=auto'

function run {
    "$@" &> /dev/null & disown %
}
complete -F _command run
complete -F _command prime-run

shopt -s globstar nocaseglob cdspell autocd
