#!/usr/bin/env zsh

if [ "$(diff "$HOME/dotfiles/etc/shells" /etc/shells)" != "" ]; then
  echo "changing /etc/shells"
  mkdir "$HOME/dotfiles/.backup/etc"
  cat /etc/shells > "$HOME/dotfiles/.backup/etc/shells.$(date +%s)"
  sudo ln -fs "$HOME/dotfiles/etc/shells" /etc/shells
fi

# set zsh to login shell
if [ "${SHELL:-undefined}" != "$(brew --prefix)/bin/zsh" ]; then
  echo "changing login shell"
  sudo chsh -s "$(brew --prefix)/bin/zsh" "$(whoami)"
fi
