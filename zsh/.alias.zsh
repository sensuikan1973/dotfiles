# terminal
alias l='ls'
alias la='ls -al'
alias ll='ls -l -F'
alias df='df -h'

# Git
alias g='git'
alias st='git status'
alias b='git branch'
alias amend='git commit --amend'
alias fp='git fetch -p'

# ssh
alias ssh="$HOME/dotfiles/zsh/bin/ssh-profile-change.zsh"

# system dependencies
alias upgrade_system_deps="$HOME/dotfiles/zsh/bin/upgrade_system_deps.zsh"

# restart shell
alias relogin='exec zsh --login'

# confirm when breaking operations are executed
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
