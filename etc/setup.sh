if [ "$(diff "$HOME/dotfiles/etc/shells" /etc/shells)" != "" ]; then
  echo "changing /etc/shells"
  mkdir -p "$HOME/dotfiles/.backup/etc"
  cat /etc/shells > "$HOME/dotfiles/.backup/etc/shells.$(date +%s)"
  sudo ln -fs "$HOME/dotfiles/etc/shells" /etc/shells
fi

# set zsh to login shell
# ref: https://support.apple.com/ja-jp/HT208050
if [ "${SHELL:-undefined}" != "$(brew --prefix)/bin/zsh" ]; then
  echo "changing login shell"
  sudo chsh -s "$(brew --prefix)/bin/zsh" "$(whoami)"
fi
