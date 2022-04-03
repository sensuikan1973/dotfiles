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

# my functions
alias ssh='$HOME/dotfiles/zsh/bin/ssh-profile-change.zsh'
alias find-bigN='$HOME/dotfiles/zsh/bin/find-bigN.zsh'
alias disk-rankN='$HOME/dotfiles/zsh/bin/disk-rankN.zsh'

# system dependencies
alias upgrade_system_deps='$HOME/dotfiles/zsh/bin/upgrade_system_deps.zsh'

# restart shell
alias relogin='exec zsh --login'

# confirm when breaking operations are executed
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
