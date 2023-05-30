# shellcheck disable=SC1091,SC2034

# See: https://zsh.sourceforge.io/Doc/Release/Variables-Index.html

ZSH_SETTINGS_PATH="$HOME/dotfiles/zsh"

# completion
# See: 「man zshcompsys」
autoload -Uz compinit && compinit -i

# PATH
source "$ZSH_SETTINGS_PATH/.path.zsh"

# PROMPT
source "$ZSH_SETTINGS_PATH/.prompt.zsh"

# alias
source "$ZSH_SETTINGS_PATH/.alias.zsh"

# option
source "$ZSH_SETTINGS_PATH/.opt.zsh"

# plugin
source "$ZSH_SETTINGS_PATH/.plugin.zsh"

# pyenv
# See: https://github.com/pyenv/pyenv
eval "$(pyenv init -)"

# rbenv
eval "$(rbenv init -)"

# nodenv
# See: https://github.com/nodenv/nodenv
eval "$(nodenv init -)"

# See: https://zsh.sourceforge.io/Doc/Release/Parameters.html#Parameters-Used-By-The-Shell
# See: https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-TIMEFMT
TIMEFMT='
==============================
cmd     : %J
time    : %E (user: %U, system: %S)
cpu     : %P
max rss : %M KB
=============================='
REPORTTIME=3 # notify time if running time takes 3 or larger seconds.
REPORTMEMORY=$((100000)) # notify time if use max rss 100MB or larger.
