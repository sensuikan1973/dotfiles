autoload -Uz vcs_info

# vcs_info_msg_0_変数をどのように表示するかフォーマットの指定
# http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#Version-Control-Information
# http://tkengo.github.io/blog/2013/05/12/zsh-vcs-info/
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'

precmd () {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]]; then
    vcs_info
    return 0
  fi
  return 1
}

DIR='%F{081}%~%f'
PROMPT='${DIR} ${vcs_info_msg_0_}
$ '
