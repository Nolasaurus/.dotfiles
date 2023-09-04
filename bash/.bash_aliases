alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Use colors in coreutils utilities output
alias ls='ls --color=auto'
alias grep='grep --color'

# ls aliases
alias ll='ls -lah'
alias la='ls -A'

# Aliases to protect against overwriting
alias cp='cp -i'
alias mv='mv -i'

alias untar="tar -xzvf"
alias update="sudo apt update && sudo apt upgrade -y"

# list of ports in use
alias ports="netstat -tulanp"

alias gh='history|grep'

alias p="cd ~/projects"
alias g="git"
alias gs="git status"
alias gb="git branch"

alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'


# IP addresses
alias ip="curl -s http://icanhazip.com"
alias localip="hostname -I | awk '{print $1}'"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}' 
