# terminal
alias l='ls'
alias la='ls -al'
alias ll='ls -l -F'
alias df='df -h'
if [ `uname` = "Darwin" ]; then
  alias ls='gls -CF --color=auto'
  alias ..='cd ..; gls -CF --color=auto'
elif [ `uname` = "Linux" ]; then
  alias ls='ls -CF --color=auto'
  alias ..='cd ..; ls -CF --color=auto'
fi

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

# シェルの再起動
alias relogin='exec zsh --login'

# 破壊操作時には、確認を行う
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
