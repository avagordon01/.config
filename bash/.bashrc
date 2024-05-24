alias ls='ls --color=auto'

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

shopt -s nocaseglob
shopt -s cdspell
shopt -s autocd
