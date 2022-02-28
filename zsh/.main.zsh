# See: https://zsh.sourceforge.io/Doc/Release/Variables-Index.html

ZSH_SETTINGS_PATH=$HOME/dotfiles/zsh

# completion
# contain Git completion: https://git-scm.com/book/ja/v2/Appendix-A%3A-%E3%81%9D%E3%81%AE%E4%BB%96%E3%81%AE%E7%92%B0%E5%A2%83%E3%81%A7%E3%81%AEGit-Zsh%E3%81%A7Git%E3%82%92%E4%BD%BF%E3%81%86#roh_my_zsh_git
autoload -Uz compinit && compinit

# PATH
source $ZSH_SETTINGS_PATH/.path.zsh

# PROMPT
source $ZSH_SETTINGS_PATH/.prompt.zsh

# alias
source $ZSH_SETTINGS_PATH/.alias.zsh

# option
source $ZSH_SETTINGS_PATH/.opt.zsh

# plugin
source $ZSH_SETTINGS_PATH/.plugin.zsh

# pyenv
# See: https://github.com/pyenv/pyenv
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# ruby
eval "$(rbenv init - zsh)"

# See: https://zsh.sourceforge.io/Doc/Release/Parameters.html#Parameters-Used-By-The-Shell
# See: https://zsh.sourceforge.io/Doc/Release/Parameters.html#index-TIMEFMT
TIMEFMT='
==============================
cmd     : %J
total   : %E
user    : %U
system  : %S
cpu     : %P
max rss : %M KB
=============================='
REPORTTIME=3 # notify time if running time takes 3 or larger seconds.
REPORTMEMORY=$((100000)) # notify time if use max rss 100MB or larger.
