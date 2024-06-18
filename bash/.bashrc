alias ls='ls --color=auto'

complete -F _command prime-run

shopt -s nocaseglob
shopt -s cdspell
shopt -s autocd

export EDITOR="code -w"
export VISUAL="code -w"
