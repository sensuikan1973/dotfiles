# == brew ==
# See: https://brew.sh/index_ja.html
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install coreutils # gls を使いたい
brew install rbenv ruby-build # ruby

# == plugin ==
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/dotfiles/plugin/zsh-syntax-highlighting
git pull --prune

# == extension ==
git clone https://github.com/seebi/dircolors-solarized.git $HOME/dotfiles/extension/dircolors-solarized
git pull --prune
