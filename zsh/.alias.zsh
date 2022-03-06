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

# util
alias findbig5='find . -type f -exec ls -s {} \; | sort -n -r | head -5'
alias diskrank5='du -ah | sort -r -k1 | head -5'
