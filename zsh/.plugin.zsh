zsh_plugins_dir="$HOME/dotfiles/zsh/plugins"

# zsh-syntax-highlighting
# See: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md#zsh-syntax-highlighting--highlighters
source $zsh_plugins_dir/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets root)

# `ctrl + R` で、履歴から選択できるようにする
# NOTE: インストールは OS ごとそれぞれの方法ですること。これについては現状 macos しか対応してない。See: macos/setup.zsh
function peco-select-history() {
  BUFFER=$(\history -n -r 1 | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history
