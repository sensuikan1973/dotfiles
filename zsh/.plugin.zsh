zsh_plugins_dir="$HOME/dotfiles/zsh/plugins"

# zsh-syntax-highlighting
source $zsh_plugins_dir/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets root) # See: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md#zsh-syntax-highlighting--highlighters

# dircolors-solarized
eval "$(gdircolors $zsh_plugins_dir/dircolors-solarized/dircolors.ansi-universal)"
