# shellcheck disable=SC1091,SC2034,SC2153

# zsh-syntax-highlighting
# https://formulae.brew.sh/formula/zsh-syntax-highlighting
# See: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md#zsh-syntax-highlighting--highlighters
source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets root)

# select command in history with `ctrl + R`.
function peco-select-history() {
  BUFFER=$(\history -n -r 1 | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history
