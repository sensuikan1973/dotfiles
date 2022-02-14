# zsh-syntax-highlighting
source $HOME/dotfiles/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets) # See: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md#zsh-syntax-highlighting--highlighters

# dircolors-solarized
eval "$(gdircolors $HOME/dotfiles/zsh_plugins/dircolors-solarized/dircolors.ansi-universal)"
