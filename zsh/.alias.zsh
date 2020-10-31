# terminal
alias ls='gls -CF --color=auto'
alias l='ls'
alias la='ls -al'
alias ll='ls -l -F'
alias df='df -h'
alias ..='cd ..; gls -CF --color=auto'
alias kindle='open ~/Library/Application\ Support/Kindle'

# Git
alias g='git'
alias st='git status'
alias b='git branch -a'
alias amend='git commit --amend'
alias fp='git fetch -p'

# シェルの再起動
alias relogin='exec $SHELL -l'
