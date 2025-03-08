# terminal
alias l='ls'
alias la='ls -al'
alias ll='ls -l -F'
alias df='df -h'
alias ls='gls -CF --color=auto'
alias ..='cd ..; gls -CF --color=auto'

# Git
alias g='git'
alias st='git status'
alias b='git branch'
alias amend='git commit --amend'
alias fp='git fetch --all --prune && git pull'

# restart shell
alias relogin='exec zsh --login'

# confirm when breaking operations are executed
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
