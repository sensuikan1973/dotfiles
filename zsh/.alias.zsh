# terminal
alias ls='gls -CF --color=auto'
alias l='ls'
alias la='ls -al'
alias ll='ls -l -F'
alias df='df -h'
alias ..='cd ..; gls -CF --color=auto'

# Git
alias g='git'
alias st='git status'
alias b='git branch'
alias amend='git commit --amend'
alias fp='git fetch -p'

# シェルの再起動
alias relogin='exec zsh --login'
