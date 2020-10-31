ZSH_SETTINGS_PATH=~/dotfiles/zsh

# completion
# Git の補完も含んでる: https://git-scm.com/book/ja/v2/Appendix-A%3A-%E3%81%9D%E3%81%AE%E4%BB%96%E3%81%AE%E7%92%B0%E5%A2%83%E3%81%A7%E3%81%AEGit-Zsh%E3%81%A7Git%E3%82%92%E4%BD%BF%E3%81%86#roh_my_zsh_git
autoload -Uz compinit && compinit

# PATH
source $ZSH_SETTINGS_PATH/.path.zsh

# PROMPT
source $ZSH_SETTINGS_PATH/.prompt.zsh

# alias
source $ZSH_SETTINGS_PATH/.alias.zsh

# option
source $ZSH_SETTINGS_PATH/.opt.zsh

# eval
source $ZSH_SETTINGS_PATH/.eval.zsh

# plugin
source $PWD/plugin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
